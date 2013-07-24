Feature: Search For Valid Product
  As a Amazon customer
  I want to search for a valid products
  So that I can see that I can look at it online

  Scenario: Searching For Valid Product Should Return Results
    Given I am on the Amazon Homepage
    When I search for a valid product
    Then I should see a list of products

  Scenario: Search For Valid Product Should Display The Search Term
    Given I am on the Amazon Homepage
    When I search for a valid product
    Then I should see the term searched for