Feature: Completing the voting registration process

  To fill in all the candidate details and then go to the admin page

  Scenario: All the fields in the form should be filled to be allowed to be voted on
    Given I am logged in as commissioner
    When I click the button add new candidate
    And I enter details for candidate
    Then I should see candidate in view candidate

    Scenario: All the fields should be allowed to be edited
      Given I am logged in as commissioner
      When I click on edit
      And I update details for candidate
      Then I should see updated details

      Scenario: Candidate can be removed by clicking delete
        Given I am at view candidate
        When I remove candidate
        Then Candidate should be removed