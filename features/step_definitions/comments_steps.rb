Given(/^I am on the "([^"]*)" page$/) do |page|
  article = Article.find_by(title: page)
  visit article_path(article[:id])
end

Then(/^I should see the "([^"]*)" button$/) do |comment|
  expect(page).to have_button comment
end

When(/^I fill in textbox with "([^"]*)"$/) do |content|
  fill_in 'comment_body', with: content
end

When(/^I click the "([^"]*)" button$/) do |button|
  click_link_or_button button
end

Then(/^I should be on the "([^"]*)"$/) do |content|
  expect(page).to have_contet content
end
