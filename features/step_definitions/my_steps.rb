When(/^I browse the homepage$/) do
  visit AmazonHomePage
end
Then(/^I should see a list of available products$/) do
  on(AmazonHomePage).text.should include 'Kindle'
end
When(/^I am on a product detail page$/) do
  visit ProductDetailPage
end
Then(/^I should see a price, description, and reviews$/) do
  on(ProductDetailPage).productTitle.should include 'Kindle'
  on(ProductDetailPage).price.should include '$69'
  on(ProductDetailPage).customer_review?.should be_true
end
Given(/^I am on the Amazon Homepage$/) do
  visit AmazonHomePage
end
When(/^I search for an invalid product$/) do
  on(AmazonHomePage) do |page|
    page.searchInputBox = 'adhbgfhbgfbhgfgfb'
    page.goButton
  end
end
Then(/^I should receive a message stating no products were returned$/) do
  on(AmazonHomePage).noResultsText?.should be_true
end