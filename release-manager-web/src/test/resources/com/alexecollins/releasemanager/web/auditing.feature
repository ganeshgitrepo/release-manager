Feature: auditing

  Background:
    Given I login as a admin

  Scenario: create approver
    Given I create a new approver
    When I look at the audit history
    Then I see the newest audit record is "admin" "created approver"