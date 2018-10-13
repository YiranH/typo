Feature: Create Categories
  As an author
  In order to manage different topics
  I want to add and edit categories for my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Foo Bar"
    And I fill in "category_permalink" with "foobar"
    And I fill in "category_description" with "FooooooooooooooBaaaaaaaaaaaaaaar"
    And I press "Save"
    Then I should be on the new categories page
    And I should see "Foobar"
    And I should see "Foo Bar"
    And I should see "foobar"
    And I should see "FooooooooooooooBaaaaaaaaaaaaaaar"
    
