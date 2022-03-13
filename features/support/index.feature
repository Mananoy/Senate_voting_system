Feature: Go to homepage
  As a user of VOTEAUS,
  So that I need to access the home page of VOTEAUS for voting or login as commissioner,
  I want to access the home page of VOTEAUS.

  Scenario: Access the home page of VOTEAUS
    Given I am on the home page of VOTEAUS
    Then I should see button "Vote" and "Login as Commissioner"