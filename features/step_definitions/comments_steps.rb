Given(/^I visit the page for article "([^"]*)"$/) do |title|
  article = Article.where(title: title).first
  visit article_path(article)    # same as: visit "/articles/#{article.id}"
end

Then(/^I should see content "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^I fill in field "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

Given(/^I click on "([^"]*)"$/) do |button|
  click_link_or_button button
end

Then(/^I should be on page for article "([^"]*)"$/) do |title|
  article = Article.where(title: title).first
  expect(page.current_path).to eq article_path(article)
end

Then(/^there should be "([^"]*)" comment in the database$/) do |number|
  expect(Comment.count).to eq number.to_i
end
