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
    And the following comments exist:
    | title               | author   | body | user_id | article_id | 
    | a                   | a_author | a_hi | 1       | 3          |
    | b                   | b_author | b_hi | 1       | 4          |
    And I am on the edit article page

  # Scenario: Merged Article Should Contain Text Of Both Previous Articles
  #   When I fill in "article_id" with "3"
  #   And I press "Merge"
  #   Then article 1 should have text of both articles

  # Scenario: Merged Article Should Have One Author
  #   When I fill in "article_id" with "3"
  #   And I press "Merge"
  #   Then article 1 should have one author

  Scenario: Merged Article Should Have Both Articles Comments
    When I fill in "article_id" with "4"
    And I press "Merge"
    Then article 3 should have both comments

  Scenario: Merged Article Should Have Title Of One Of Old Articles
    When I fill in "article_id" with "4"
    And I press "Merge"
    Then article 3 should have one title