Feature: Go to vote
  As a user of VOTEAUS,
  So that I need to vote for my favorite candidate,
  I want to access the vote page of VOTEAUS and vote.

  Scenario: Access the home page of VOTEAUS and click "Vote" button
    Given I am on the home page of VOTEAUS
    When I click the button "Vote"
    Then I should be directed to voter info page
    And I fill the voter info and click the "Create Voter"
    Then I should see the vote page