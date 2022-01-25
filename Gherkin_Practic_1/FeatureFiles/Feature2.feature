Feature: Choose films on site

As a user 
want to have a list of the latest films
in order to be acquinted with new film productions

As a user 
want to choose dramas ganres
in order to watch relevant films

As a user 
want to look for films by their names
in order to see favorite content

Background: 
Given user on the homepage

 @HightPriority
Scenario: One click chosen film 
  When user clicks on the "New films" button
  Then user sees chosen default page "Latest intakes" on the screen
  Then user sees a text "Смотреть новинки фильмов в HD онлайн"
  Then user can choose film made in 2022

 @Smoke
Scenario: Quick sort out content 
  When user clicks on 'Film' button
  And user clicks a 'Drama' button
  And user clicks on 'Popular' filter
  Then user sees a sorted content of certain genre

 @Smoke
Scenario: Search a film by its name
  When user clicks on "Search" field
  And user inputs an 'Avatar' in this field
  And user clicks on the 'Avatar' item in drop-down menu
  Then user sees a page with a chosen film