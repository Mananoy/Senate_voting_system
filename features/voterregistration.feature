Feature: Completing the voting registration process

  To fill in all the voter details and then go to the voting page

  Scenario: All the fields in the form should be filled to be allowed to vote
    Given Given I am on the index page of the website
    When I click the button vote
    And I fill the voter info and click the vote button
    Then I should see vote page