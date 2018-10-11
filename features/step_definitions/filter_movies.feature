Feature: User can manually add a movie
#   As a movie buff
#   So that I can filter movies based on rating

Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

  
Scenario: Filter rating R
  Given I am on the RottenPotatoes home page
  When I check the rating:PG
  And I uncheck the rating:R
  And I press "ratings_submit"
  Then I should be on the RottenPotatoes home page
  And I should see "Star Wars"
  And I should see "Blade Runner"
  And I should not see "Alien"
  And I should not see "THX-1138"