Given(/^I am on the home page of VOTEAUS$/) do
  visit root_path
end

Then(/^I should see button "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_selector(:link_or_button, arg1)
  expect(page).to have_selector(:link_or_button, arg2)
end

When(/^I click the button "([^"]*)"$/) do |arg|
  click_button(arg)
end

Then(/^I should be directed to voter info page$/) do
  visit page_voter_path
end

And(/^I fill the voter info and click the "([^"]*)"$/) do |arg|
  click_button(arg)
end

Then(/^I should see the vote page$/) do
  page()
end

Given('I am logged in as commissioner') do
  visit candidate_index_path
end

Then('I should be directed to the add candidate page') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be able to enter details for candidate') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be redirected to the view candidate page') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('I am on the view candidate page') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('The candidate should be removed') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('I am on the View Candidate page') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be redirected to edit candidate page') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I fill in new details') do
  pending # Write code here that turns the phrase above into concrete actions
end


Then('the candidate details will update') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I will be redirected to view candidate page') do
  pending # Write code here that turns the phrase above into concrete actions
end