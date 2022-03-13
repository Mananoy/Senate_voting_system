Given(/^Given I am on the index page of the website$/) do
  visit "/page"
end

When(/^I click the button vote$/) do
  click_button('Vote')
  visit "/page/voter"
end

And(/^I fill the voter info and click the vote button$/) do
  fill_in 'Name', with: 'John'
  fill_in 'Phonenumber', with: '78349779'
  fill_in 'Citizennumber', with: 'p78349779'
  fill_in 'Address', with: 'Highgate lodge'
  click_button('Create Voter')
end

Then(/^I should see vote page$/) do
  visit "/page/voter/vote"
  page.should have_content("Welcome to vote page!")
end