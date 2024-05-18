Feature: ScenarioOutlineDemo

@add
Scenario Outline: Add two numbers using scenario outline
	Given the first number is <number1>
	And the second number is <number2>
	When the two numbers are added
	Then the result should be <expectedSum>

@positiveNumbers
Examples: 1 add positive numbers
	| number1 | number2 | expectedSum |
	| 50      | 70      | 120         |
	| 5       | 7       | 12          |
	| 1       | 2       | 3           |

@negativeNumbers
Examples: 2 add negative numbers
	| number1 | number2 | expectedSum |
	| -50     | -70     | -120        |
	| -5      | -7      | -12         |
	| -1      | -2      | -3          |
