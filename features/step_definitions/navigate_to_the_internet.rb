require "rubygems"
require "rspec"
require "watir"
require "rspec/expectations"
require "webdrivers"

Given ("that I open the browser") do
    @browser ||= Watir::Browser.new :chrome
end

When ("I go to the URL") do
    @browser.goto "http://the-internet.herokuapp.com/"
end

Then ("I should see {string} displayed") do |string|
    @browser.h1(class: 'heading').wait_until
    page_output = @browser.h1(class: 'heading').text
    expect(page_output).to eql(string)
end