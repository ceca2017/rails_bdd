Feature: Add a comment to an article
  As a visitor,
  after reading an article,
  I would like to be able to add a comment and optionally an e-mail address to this article

  Background:
    Given the following articles exists
      | title                 | content                             | author    |
      | A breaking news item  | Some really breaking action         | Thomas    |
      | Learn Rails 5         | Build awesome rails applications    | Amber     |

  Scenario: Create a comment, two times - the second time w/out email
    Given I visit the page for article "A breaking news item"
    Then I should see content "Some really breaking action"
    Given I fill in field "comment_comment" with "Great article!"
    And I fill in field "comment_email" with "a@b.com"
    And I click on "Submit"
    Then I should be on page for article "A breaking news item"
    And I should see "Great article!"
    And I should see "a@b.com"
    And there should be "1" comment in the database
    Given I visit the page for article "A breaking news item"
    Then I should see content "Some really breaking action"
    Given I fill in field "comment_comment" with "Agree!"
    And I click on "Submit"
    Then I should be on page for article "A breaking news item"
    And I should see "Agree!"
    And there should be "2" comment in the database

  Scenario: Trying to submit a comment w/out any content (comment text) should not add any record to the db
    Given I visit the page for article "A breaking news item"
    Then I should see content "Some really breaking action"
    Given I click on "Submit"
    Then I should be on page for article "A breaking news item"
    And there should be "0" comment in the database
