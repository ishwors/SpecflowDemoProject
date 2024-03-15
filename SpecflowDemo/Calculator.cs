using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalculatorApp
{
    public class Calculator
    {
        public int FirstNumber { get; set; }
        public int SecondNumber {  get; set; }

        //Add Two numbers
        public int Add()
        {
            return FirstNumber + SecondNumber;
        }

        //Multiply Two numbers
        public int Multiply()
        {
            return (FirstNumber * SecondNumber);
        }

    }
}
