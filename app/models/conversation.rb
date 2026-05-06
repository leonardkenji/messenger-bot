class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :customer

  def generate_insights!
    return if messages.empty?

    transcript = messages.map { |m| "#{m.role == 'user' ? 'Cliente' : 'Assistente'}: #{m.content}" }.join("\n")

    llm = RubyLLM.chat
    subject_response = llm.ask("Em no máximo 8 palavras, qual é o assunto principal desta conversa? Responda apenas com o assunto, sem pontuação final.\n\n#{transcript}")
    update!(subject: subject_response.content.strip)

    llm2 = RubyLLM.chat
    summary_response = llm2.ask("Faça um resumo desta conversa em 2 frases curtas, do ponto de vista do atendimento ao cliente.\n\n#{transcript}")
    update!(summary: summary_response.content.strip)
  end
end
