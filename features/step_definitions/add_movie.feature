Feature: User can manually add a movie
#   As a movie buff
#   So that I can add new movies

Scenario: Add a movie
  Given I am on the RottenPotatoes home page
  When I follow "Add new movie"
  Then I should be on the Create New movie page
  When I fill in "Title" with "Men In Black"
  And I select "PG-13" from "Rating"
  And I fill in "Director" with "Barry Sonnenfeld"
  And I press "Save Changes"
  Then I should be on the RottenPotatoes home page
  And I should see "Men In Black"