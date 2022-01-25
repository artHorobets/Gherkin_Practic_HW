Feature: Choose films on site

As a user 
I want to have a list of the new films 
in order to be acquainted with new film production

As a user
I want to choose dramas genre
in order to watch relevant films

As a user
I want to find my favorite film  by its name
in order to watch it


Background: 
Given user on the homepage

Scenario: choose new films
  When user clicks on the 'New films' button
  Then user sees chosen default page 'Latest intakes' on the screen
  And user sees a text 'Смотреть новинки фильмов в HD онлайн'
  And user can choose film made in 2022

Scenario: search by genre
  When user clicks on 'Film' button
  And user Clicks a 'Drama' button 
  And user clicks on 'Popular' filter
  Then user sees a sorted content of certain genre

Scenario: search a film by its name
  When user clicks on 'Search' field
  And user inputs an 'Avatar' in this field
  And user clicks on the 'Avatar' item in drop-down menu
  Then user sees a page with a chosen film