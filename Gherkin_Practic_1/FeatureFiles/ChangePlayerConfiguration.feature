Feature: Change player configuration

As a user 
I want to choose film translation
In order to watch film from different perspectives

As a user
I want to change video quality settings
in order to watch film with bad Internet connection

As a user
I want to watch film in full-screen mode
in order to watch film comfortably 


Background: 
Given user is on page with film 'Butterfly effect'

Scenario: choose version of translation 
  When user clicks on the 'Дубляж' button
  Then button changes its color to 'grey'

Scenario: change quality settings 
  When user clicks on 'Cog' button
  And user Clicks on 'Качество' button in drop-down menu
  And user clicks on '360p' button in drop-down menu
  Then user sees button '360p' marked as chosen
  And user sees closed 'Cog' in drop-down menu


Scenario: change screen mode
  When user clicks on the 'Change screen size' button
  Then videoplayer accepted full-screen mode