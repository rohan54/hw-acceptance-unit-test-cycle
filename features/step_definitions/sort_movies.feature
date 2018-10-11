Feature: User can manually add a movie
#   As a movie buff
#   So that I can sort movies by name

Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

  
Scenario: Sorting movies by name
  Given I am on the RottenPotatoes home page
  When I follow "Movie Title"
  Then I should see "Alien" before "Blade Runner"
  
# Scenario: Sorting movies by name
#   Given I am on the RottenPotatoes home page
#   When I follow "Release Date"
#   Then I should see "THX-1138" before "Star Wars"