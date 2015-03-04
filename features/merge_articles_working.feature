Feature: Merge Articles
  As a blog administrator
  In order to keep the blog from having too many similar things
  I want to be able to merge articles in my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist:
    | title               | author   | body | user_id |
    | a                   | a_author | a_hi | 1       |
    | b                   | b_author | b_hi | 1       |
    And I am on the edit article page

  Scenario: Merged Article Should Contain Text Of Both Previous Articles
    # Given I am on the new article page
    # When I fill in "article_title" with "Foobar"
    # And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    # And I press "Publish"
    # Then I should be on the admin content page

  Scenario: Merged Article Should Have One Author
    # Given I am on the new article page
    # When I fill in "article_title" with "Foobar"
    # And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    # And I press "Publish"
    # Then I should be on the admin content page

  Scenario: Merged Article Should Have Both Articles Comments
    # Given I am on the new article page
    # When I fill in "article_title" with "Foobar"
    # And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    # And I press "Publish"
    # Then I should be on the admin content page

  Scenario: Merged Article Should Have Title Of One Of Old Articles
    # Given I am on the new article page
    # When I fill in "article_title" with "Foobar"
    # And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    # And I press "Publish"
    # Then I should be on the admin content page