Given(/^I am logged in as commissioner$/) do
  visit "/page/admin"
end

When(/^I click the button add new candidate$/) do
  click_button('Add new candidate')
  visit "/page/admin/new"
end

And(/^I enter details for candidate$/) do
  fill_in 'Name', with: 'Scott'
  fill_in 'Surname', with:'Morrison'
  fill_in 'partyab', with:'LP'
  fill_in 'partyname', with: 'Liberal'
  fill_in 'candidatenumber', with: '99'
  click_button('Create Candidate')
end

Then(/^I should see candidate in view candidate$/) do
  click_button('View candidates')
  visit "/page/admin/view_candidate"
end

Given(/^I am logged in as commissioner$/) do
  visit "/page/admin"
end

When(/^I click on edit$/) do
  click_button('Edit')
  visit "/candidate/2/edit"
end

And(/^I update details for candidate$/) do
  fill_in 'Name', with: 'Scott'
  fill_in 'Surname', with:'Morrison'
  fill_in 'partyab', with:'LP'
  fill_in 'partyname', with: 'Liberal'
  fill_in 'candidatenumber', with: '111'
  click_button('Update Candidate')
end
Then(/^I should see updated details$/) do
  visit"candidate/2"
  click_button('Back')
end

Given(/^I am at view candidate$/) do
  visit "/page/admin/view_candidate"
end

When(/^I remove candidate$/) do
  click_button('delete')
end
Then(/^Candidate should be removed from candidate view$/) do
  visit"/page/admin/view_candidate"
end

