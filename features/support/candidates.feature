Feature: Edit Candidates
  As the commissioner of VoteAus,
  So that I may manually edit information
  I want to be able to change the candidates details, including name, party and state

  Scenario: Add new Candidate
    Given I am logged in as commissioner
    When I click the button "Add new candidate"
    Then I should be directed to the add candidate page
    And I should be able to enter details for candidate

  Scenario: View existing Candidates
    Given I am logged in as commissioner
    When I click the button "View Candidates"
    Then I should be redirected to the view candidate page


  Scenario: Delete Candidate
    Given I am on the view candidate page
    When I click the button "Delete"
    Then The candidate should be removed


  Scenario: Edit Candidate
    Given I am on the View Candidate page
    When I click the button "Edit"
    Then I should be redirected to edit candidate page
    And I fill in new details
    When I click the button "Update"
    Then the candidate details will update
    And I will be redirected to view candidate page
