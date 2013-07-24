When(/^I browse the homepage$/) do
  @browser.goto 'http://www.amazon.com'
end
Then(/^I should see a list of available products$/) do
  @browser.text.should include 'Kindle'
end