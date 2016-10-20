Feature: Merge Articles
  In order to group similar articles
  As an admin
  I want to merge articles

  Background:
    Given the blog is set up
    And the following articles exist:
    | title | author | body |
    | Inception | john | This is my first blog. |
    | Another blog | joseph | This is just another blog |

  Scenario: A admin can merge articles

    Given I am logged into the admin panel
    And I am on the article edit page of 'Inception'
    Then I should see "Merge Articles"
    When I fill in "merge_with" with "4"
    And I press "Merge"
    Then I should be on the admin content page
    When I go to the article page of 'Inception'
    Then I should see "This is my first blog.This is just another blog"

  Scenario: New article form should not have merge articles option
    Given I am logged into the admin panel
    And I am on the new article page
    Then I should not see "Merge Articles"


