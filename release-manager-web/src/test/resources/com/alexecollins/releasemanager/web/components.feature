Feature: components

  Scenario: create new component
    Given the create component page
    And I input a component
    And I click submit
    Then I do not see an error
    And I see my new component