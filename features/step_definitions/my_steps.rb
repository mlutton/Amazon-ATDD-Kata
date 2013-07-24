When(/^I browse the homepage$/) do
  visit AmazonHomePage
end
Then(/^I should see a list of available products$/) do
  on(AmazonHomePage).text.should include 'Kindle'
end