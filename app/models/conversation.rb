class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :conversation_notes, dependent: :destroy
  belongs_to :customer

  STATUSES = %w[active finished].freeze

  CARS = JSON.parse(File.read(Rails.root.join("app/assets/data/cars.json"))).freeze

  def active?
    status == "active"
  end

  def toggle_status!
    update!(status: active? ? "finished" : "active")
  end

  def advice_list
    return [] if advice.blank?
    advice.split("\n").map(&:strip).reject(&:blank?)
  end

  def stale_insights?
    return true if insights_generated_at.nil?
    messages.where("created_at > ?", insights_generated_at).exists?
  end

  def translate_messages!
    untranslated = messages.where(translated_content: nil).order(:created_at).to_a
    return if untranslated.empty?

    batch = untranslated.map(&:content).join("\n---\n")
    llm = RubyLLM.chat
    result = llm.ask(
      "Traduza cada trecho abaixo para japonês natural e fluente. " \
      "Separe as traduções com \"---\" exatamente na mesma ordem. " \
      "Retorne APENAS as traduções, sem explicações.\n\n#{batch}"
    )
    translations = result.content.strip.split(/\n?---\n?/)
    untranslated.each_with_index do |msg, i|
      msg.update_column(:translated_content, translations[i]&.strip) if translations[i]
    end
  end

  def generate_insights!
    return if messages.empty?

    translate_messages!

    transcript = messages.order(:created_at)
                         .map { |m| "#{m.role == 'user' ? '顧客' : 'BOT'}: #{m.translated_content.presence || m.content}" }
                         .join("\n")

    cars_summary = CARS.map { |c| "#{c['name']} — #{c['price']} — #{c['km']} — Shaken #{c['shaken']}" }
                       .join("\n")

    llm = RubyLLM.chat
    subject_response = llm.ask(
      "8文字以内で、この会話の主なテーマを要約してください。" \
      "テーマのみを回答し、句読点は不要です。必ず日本語で回答してください。\n\n#{transcript}"
    )
    update!(subject: subject_response.content.strip)

    llm2 = RubyLLM.chat
    summary_response = llm2.ask(
      "顧客対応の観点から、この会話を2文で簡潔にまとめてください。必ず日本語で回答してください。\n\n#{transcript}"
    )
    update!(summary: summary_response.content.strip)

    llm3 = RubyLLM.chat
    advice_response = llm3.ask(
      "この会話をもとに、営業担当者が商談を進めるための実践的なアドバイスを3〜5点挙げてください。" \
      "顧客のニーズに合う在庫車がある場合は、車名と価格を含めて具体的に提案してください。" \
      "各アドバイスは短く端的に1行で記載し、箇条点・番号・句読点は不要です。1行に1アドバイスとしてください。必ず日本語で回答してください。\n\n" \
      "在庫一覧:\n#{cars_summary}\n\n" \
      "会話:\n#{transcript}"
    )
    update!(advice: advice_response.content.strip, insights_generated_at: Time.current)
  end
end
