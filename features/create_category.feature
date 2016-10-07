Feature: Category creation

As a blogger
I want to create categories 
To organize my blogs

Background:
  Given the blog is set up
  And I am logged into the admin panel

Scenario: Creating a new category
  
  Given I am on the admin page
  And I go to the new category page
  Then I should see "Categories"
  When I fill in "Name" with "Misc"
  And I fill in "Keywords" with "miscellaneous"
  And I fill in "Description" with "Nothing fancy"
  And I press "Save"
  Then I should see "Category was successfully saved"