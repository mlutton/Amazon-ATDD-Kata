class ProductSearchResults
  include PageObject

  span(:noResultsText, :class => 'noResultsTitleKeyword')
  div(:searchResult, :id => 'atfResults')
  h1(:searchTerm, :id => 'breadCrumb')
end