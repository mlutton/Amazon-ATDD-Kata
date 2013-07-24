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