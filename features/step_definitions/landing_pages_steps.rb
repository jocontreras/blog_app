When(/^I am on the landing page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I click the "([^"]*)" link$/) do |link|
  click_link_or_button link
end
