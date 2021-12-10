require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["ENV_TYPE"]}.yaml"))
CUCUMBER_PUBLISH_ENABLED=false

case ENV["BROWSER"]
when "chrome"
    @driver = :selenium_chrome
when "headless"
    @driver = :selenium_chrome_headless
else
    puts 'Invalid Browser'
end

Capybara.configure do |config|
    config.default_driver = @driver
    config.app_host =  CONFIG['url']
    config.default_max_wait_time = 10
end

