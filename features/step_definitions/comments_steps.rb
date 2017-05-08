Given(/^I fill in field "([^"]*)" with "([^"]*)" under article "([^"]*)"$/) do |field, comment, title|
  fill_in(field, with: comment)
end

Given(/^I click on the link "([^"]*)" to article "([^"]*)"$/) do |link_name, title|
  click_link(link_name)
end

Then(/^I should see content "([^"]*)"$/) do |content|
  expect(page).to have content
end

Then(/^I should see link "([^"]*)"$/) do |link_name|
  expect(page).to have content
end
