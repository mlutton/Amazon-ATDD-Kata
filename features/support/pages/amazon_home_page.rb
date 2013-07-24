class AmazonHomePage
  include PageObject

  page_url ('http://www.amazon.com')

  text_field(:searchInputBox, :id => 'twotabsearchtextbox')
  button(:goButton, :class => 'nav-submit-input')
  span(:noResultsText, :class => 'noResultsTitleKeyword')
end