Feature: Search For Invalid Product
  As a Amazon customer
  I want to search for an invalid products
  So that I can see that amazon doesn't have this item

  Scenario: Searching For Invalid Products
    Given I am on the Amazon Homepage
    When I search for an invalid product
    Then I should receive a message stating no products were returned