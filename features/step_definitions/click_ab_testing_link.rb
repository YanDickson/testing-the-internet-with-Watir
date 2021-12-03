require "rubygems"
require "rspec"
require "watir"
require "rspec/expectations"
require "webdrivers"

Given ("that I am on the internet page") do
    @browser ||= Watir::Browser.new :chrome
    @browser.goto "http://the-internet.herokuapp.com/"
end

When ("I click the {string} link") do |string|
    @browser.link(text: string).click
end

Then ("I should be redirected to the {string} page") do |string|
    @browser.h3(text: "A/B Test Control").wait_until
    page_output = @browser.h3(visible_text: "A/B Test Control").text
    expect(page_output).to eql(string)
end
