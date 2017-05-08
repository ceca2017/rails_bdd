Given(/^I visit the page for article "([^"]*)"$/) do |title|
  article = Article.where(title: title).first
  # visit "/articles/#{article.id}"
  visit article_path(article)
end

Then(/^I should see content "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^I fill in field "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I click "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be on page for article "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^there should be "([^"]*)" comment in the database$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end






# Given(/^I fill in field "([^"]*)" with "([^"]*)" under article "([^"]*)"$/) do |field, comment, title|
#   fill_in(field, with: comment)
# end
#
# Given(/^I click on the link "([^"]*)" to article "([^"]*)"$/) do |link_name, title|
#   click_link(link_name)
# end
#
# Then(/^I should see content "([^"]*)"$/) do |content|
#   expect(page).to have content
# end
#
# Then(/^I should see link "([^"]*)"$/) do |link_name|
#   expect(page).to have content
# end
