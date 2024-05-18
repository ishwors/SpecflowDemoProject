@test
Feature: ScenarioOutlineDemo

@add
Scenario Outline: Add two numbers using scenario outline
	Given the first number is <number1>
	And the second number is <number2>
	When the two numbers are added
	Then the result should be <expectedSum>

@positiveNumbers
Examples: 1 add positive numbers
	| SN  | number1 | number2 | expectedSum |
	| 101 | 50      | 70      | 120         |
	| 102 | 5       | 7       | 12          |
	| 103 | 1       | 2       | 3           |

@negativeNumbers
Examples: 2 add negative numbers
	| SN  | number1 | number2 | expectedSum |
	| 201 | -50     | -70     | -120        |
	| 202 | -5      | -7      | -12         |
	| 203 | -1      | -2      | -3          |
