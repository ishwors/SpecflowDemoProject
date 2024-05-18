Feature: Calculator
![Calculator](https://specflow.org/wp-content/uploads/2020/09/calculator.png)
Simple calculator for adding **two** numbers

Link to a feature: [Calculator](SpecFlowTest/Features/Calculator.feature)
***Further read***: **[Learn more about how to generate Living Documentation](https://docs.specflow.org/projects/specflow-livingdoc/en/latest/LivingDocGenerator/Generating-Documentation.html)**
 
#this is Case Sensitive
@add
Scenario: Add two numbers
	Given the first number is 50
	And the second number is 70
	When the two numbers are added
	Then the result should be 120


@multiply
Scenario: Multiply two numbers
	Given the first number is 50
	And the second number is 70
	# right click on keyword to get `Bind Code` for related step like - for `When`
	When the two numbers are multiplied
	Then the result should be 3500

@add
Scenario: Add two numbers using data table
	Given the first and second numbers are:
		| Number1 | Number2 |
		| 10      | 20      |
	When the two numbers are added
	Then the result should be 30
