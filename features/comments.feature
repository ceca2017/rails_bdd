Feature: Add a comment to an article
  As a visitor,
  after reading an article,
  I would like to be able to add a comment and optionally an e-mail address to this article

  Background:
    Given the following articles exists
      | title                 | content                             | author    |
      | A breaking news item  | Some really breaking action         | Thomas    |
      | Learn Rails 5         | Build awesome rails applications    | Amber     |

  Scenario: Create a comment
    Given I visit the page for article "A breaking news item"
    Then I should see content "Some really breaking action"
    Given I fill in field "comment_comment" with "Great article!"
    And I fill in field "comment_email" with "a@b.com"
    And I click "Submit"
    Then I should be on page for article "A breaking news item"
    And I should see "Great article!"
    And I should see "a@b.com"
    And there should be "1" comment in the database








  #
  # Scenario: Viewing list of articles on the application's landing page
  #   Given I am on the landing page
  #   And I click on the link "A breaking news item"
  #
  #
  #
  #
  #   Given I fill in field "comment" with "Great article!" under article "A breaking news item"
  #   And I fill in field "Email" with "a@b.com" under article "A breaking news item"
  #   And I click on the link "Submit" to article "A breaking news item"
  #   Then I should see content "Great article"
  #   And I should see link "a@b.com"



# Some notes for the implementation
# Need to add a form_for for in the view
# Need to generate a model for the comments
#   and add rspec tests for this new model
#   and update the rspec tests for the article_spec.rb to test the associaton
#     and then add the association to the article.rb model
#   I need to run the db:migrate in the console to update the database with the new table
# Need to add a nested route for the comments and article
#   One article can have several comments
# Need to generate a comments controller with (at least, perhaps more) the create (including sanitizing the params) and new actions
#
# To figure out:
#   How to make the cucmber test find the comment field for the given article in the view.
