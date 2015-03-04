Feature: Merge Articles
  As a blog administrator
  In order to keep the blog from having too many similar things
  I want to be able to merge articles in my blog

  Background:
    Given the blog is set up
    And I am not logged into the admin panel

  Scenario: Non-Admin Cannot Merge Articles
    # Given I am on the new article page
    # When I fill in "article_title" with "Foobar"
    # And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    # And I press "Publish"
    # Then I should be on the admin content page