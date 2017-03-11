Given(/^I am on the "([^"]*)" page$/) do |page|
  article = Article.find_by(title: page)
  visit article_path(article[:id])
end

Then(/^I should see the "([^"]*)" button$/) do |comment|
  expect(page).to have_button comment
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |text, content|
  fill_in('Textbox', with => 'This is a good article')
end

When(/^I click the "([^"]*)" button$/) do |button|
  click_link_or_button  button
end

Then(/^I should be on the "([^"]*)" page$/) do |content|
  expect(page).to have_content content
end
