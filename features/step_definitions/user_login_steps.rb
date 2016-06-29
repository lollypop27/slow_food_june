Given(/^the following users exist$/) do |table|
  table.hashes.each do |user|
    User.create(username: user[:username], password: user[:password])
  end
end

Given(/^I am on the home page$/) do
  visit '/'
end

Given(/^I click "([^"]*)"$/) do |link|
  click_link_or_button link
end

Then(/^I should be on the login page$/) do
  expect(page.current_path).to eq '/auth/login'
end

Given(/^I am on the login page$/) do
  visit '/auth/login'
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

Given(/^I click on "([^"]*)"$/) do |button|
  click_link_or_button button
end

Then(/^show me the page$/) do
  save_and_open_page
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should be on the home page$/) do
  expect(page.current_path).to eq '/'
end
