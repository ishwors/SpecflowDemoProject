Feature: ShoppingCart

A short summary of the feature

@shoppin @price
Scenario: Calculate Total Price of item added in shopping cart
	Given the following items are in my shopping cart:
	| Items     | Quanity | Price |
	| chocolate | 2       | 100   |
	| Chips     | 1       | 50    |
	| Juice     | 2       | 25    |
	When I calculate the total price
	Then the total price should be 160
