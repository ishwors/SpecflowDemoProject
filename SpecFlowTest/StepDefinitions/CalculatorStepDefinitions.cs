using CalculatorApp;
using NUnit.Framework;
using TechTalk.SpecFlow.CommonModels;

namespace SpecFlowTest.StepDefinitions
{
    [Binding]  // it represents - Step Definition
    public sealed class CalculatorStepDefinitions
    {

        private readonly Calculator _calculator = new Calculator();
        private int _result;

        [Given("the first number is (.*)")]
        public void GivenTheFirstNumberIs(int number)
        {
            _calculator.FirstNumber = number;
        }

        [Given("the second number is (.*)")]
        public void GivenTheSecondNumberIs(int number)
        {
            _calculator.SecondNumber = number;
        }

        [When("the two numbers are added")]
        public void WhenTheTwoNumbersAreAdded()
        {
            _result = _calculator.Add();
        }

        [Then("the result should be (.*)")]
        public void ThenTheResultShouldBe(int result)
        {
            Assert.AreEqual(result, _result);
        }

        [When(@"the two numbers are multiplied")]
        public void WhenTheTwoNumbersAreMultiply()
        {
            _result = _calculator.Multiply();
        }

    }
}
