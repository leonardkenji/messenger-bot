require "watir"
require "selenium-webdriver"
require "nokogiri"
require "json"

class WebsiteScrape
  BASE_URL = "https://www.easycarride.com"
  URL = "#{BASE_URL}/en/stock-list"

  CHROME_ARGS = [
    "--headless=new",
    "--no-sandbox",
    "--disable-dev-shm-usage",
    "--window-size=1280,720",
    "--lang=ja-JP",
    "--disable-gpu",
    "--disable-software-rasterizer",
    "--disable-extensions",
    "--disable-background-networking",
    "--disable-default-apps",
    "--disable-sync",
    "--disable-translate",
    "--hide-scrollbars",
    "--mute-audio",
    "--no-first-run",
    "--disable-setuid-sandbox",
    "--js-flags=--max-old-space-size=256",
    "--single-process",
    "--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
  ].freeze

  def call
    Selenium::WebDriver::Chrome::Service.driver_path = `which chromedriver`.strip

    chrome_options = Selenium::WebDriver::Chrome::Options.new(args: CHROME_ARGS)
    chrome_binary = `which google-chrome 2>/dev/null || which chromium-browser 2>/dev/null || which chromium 2>/dev/null`.strip
    chrome_options.binary = chrome_binary if chrome_binary.present?

    browser = Watir::Browser.new(:chrome, options: chrome_options)

    browser.goto(URL)

    all_cards = []

    loop do
      Watir::Wait.until(timeout: 30) { browser.element(css: '[class*="stockList_carCard"]').exists? }
      sleep 1

      html = browser.execute_script("return document.documentElement.outerHTML;")
      doc  = Nokogiri::HTML(html)
      cards = doc.css('[class*="stockList_carCard"]').to_a
      all_cards += cards

      next_btn = browser.button(class: /p-paginator-next/)
      break if next_btn.disabled?

      first_link = doc.at_css('[class*="stockList_carCard"] a')&.attr("href")
      next_btn.click

      Watir::Wait.until(timeout: 30) do
        new_html = browser.execute_script("return document.documentElement.outerHTML;")
        new_doc  = Nokogiri::HTML(new_html)
        new_link = new_doc.at_css('[class*="stockList_carCard"] a')&.attr("href")
        new_link.present? && new_link != first_link
      end
    end

    cars = all_cards.uniq { |card| card.at_css("a")&.attr("href") }.map { |card| parse_card(card) }
    File.write(Rails.root.join("app/assets/data/cars.json"), JSON.pretty_generate(cars))
    cars
  ensure
    browser&.close
  end

  private

  def parse_card(card)
    path = card.at_css("a")&.attr("href")

    {
      name:   card.at_css('[class*="stockList_carModel"]')&.text&.strip,
      url:    path ? "#{BASE_URL}#{path}" : nil,
      image:  card.at_css("img")&.attr("src"),
      price:  card.at_css('[class*="stockList_price"]')&.text&.strip,
      km:     card.xpath('.//p[contains(text(),"Mileage")]/following-sibling::p[1]').text.strip,
      shaken: card.xpath('.//p[contains(text(),"Inspection")]/following-sibling::p[1]').text.strip
    }
  end
end
