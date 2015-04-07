require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'

# Capybara Settings
Capybara.current_driver = :selenium
Capybara.app_host = "https://twitter.com/monoa22s"
Capybara.default_wait_time = 20

module Crawler
  class TwitterSite
    include Capybara::DSL

    def screenshot
      visit('/')
      # screenshot!
      page.save_screenshot('nbi-tweets.png',:selector => '#id=stream-item-tweet585393724902912000')
    end

  end
end

crawler = Crawler::TwitterSite.new
crawler.screenshot

