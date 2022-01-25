Feature: Order product on site

I am as user
I want to choose an item on site
In order to pay for it immediately

@tag1
Scenario: Choose an item and poceed to basket for payment	
	Given user is on the homepage
  When user clicks on 'Search' field
  And user input text 'Table' in the 'Search' field
  And user choose first product and click 'Add' to basket
  And user clicks on the shopping basket in the header
  Then user is on the basket page
  Then user check the chosen table is in the basket
  When user clicks on 'Order the product'
  And user confirms payment information
  Then user sees pop-up 'Thank you for the ordering'
