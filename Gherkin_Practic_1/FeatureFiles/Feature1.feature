Feature: Write a commentary

As a user 
I want to write commentaries under player
in order to share my own impression with others

As a user 
I want to complain on other user's commentary
In order hide spoilers 

As a user
I want to comment other user's commentary
In order to discuss films


Background: 
Given user is on page with film

Scenario: write a comment to film
  When user clicks on field 'Написать отзыв'
  And user inputs text 'Nice film'
  And user click on 'Имя' field
  And user inputs text 'Petya' 
  And user clicks button 'Добавить'
  Then user sees a message on the screen 'Комментарий успешно добавлен'

Scenario: complain on commentary
  When user chooses commentary 'Vasya'
  And user clicks on button 'Пожаловаться на комментарий' 
  And user clicks on button 'Содержит спойлер' on banner
  And user clicks on button 'Отправить' 
  Then user sees a window with message 'Мы рассмотрим ваше обращение'

Scenario: comment other commentaries
  When user chooses commentary 'Vasya'
  And user clicks on button 'Ответить' under commentary
  And user clicks on field 'Написать комментарий'
  And user inputs text 'Nice film'
  And user click on 'Имя' field
  And user inputs text 'Petya' 
  And user clicks button 'Отправить'
  Then user sees text 'Nice film' under commented commentary