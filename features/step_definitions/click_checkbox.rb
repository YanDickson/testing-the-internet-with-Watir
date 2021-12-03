require "rubygems"
require "rspec"
require "watir"
require "rspec/expectations"
require "webdrivers"

Given ("that checkbox 1 is unchecked") do
    @checkbox_page = site.checkbox_page.open
    @clear_checkbox_1 = @checkbox_page.clear_checkbox_1
end

When ("I click the checkbox") do
    @check_checkbox_1 = @checkbox_page.check_checkbox_1
end

Then ("the box should be checked") do
    expect(@check_checkbox_1.checked?).to eql(true)
end

