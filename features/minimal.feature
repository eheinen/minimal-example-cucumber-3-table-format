Feature: Minimal Example

  Scenario: Formatting table keys using Tranform
    Given I have the following table
      | attribute | value |
      | name      | Paulo |
      | age       | 56    |
    Then I should have a table with attribute as symbols

  Scenario: Formatting table keys not using Tranform
    Given I have the following table
      | any       | value |
      | name      | Paulo |
      | age       | 56    |
    Then I should not have a table with attribute as symbols
