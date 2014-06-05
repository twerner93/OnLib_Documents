using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Calc;

namespace CalcTest
{
    [TestClass]
    public class CalculatorTest
    {
        private static Calculator calculator;

        [ClassInitialize]
        public static void switchOnCalculator()
        {
            Console.WriteLine("\tSwitch on calculator");
            calculator = new Calculator();
            calculator.switchOn();
        }

        [ClassCleanup]
        public static void switchOffCalculator()
        {
            Console.WriteLine("\tSwitch off calculator");
            calculator.switchOff();
            calculator = null;
        }


        [TestInitialize]
        public void clearCalculator()
        {
            calculator.clear();
        }

        [TestMethod]
        public void add()
        {
            calculator.add(1);
            calculator.add(1);
            Assert.Equals(calculator.getResult(), 2);
        }

        [TestMethod]
	    public void subtract() 
        {
		    calculator.add(10); 
		    calculator.subtract(2); 
		    Assert.Equals(calculator.getResult(), 8); 
        }

        [TestMethod]
        public void divide()
        {
            calculator.add(8);
            calculator.divide(2);
            Assert.Equals(calculator.getResult(), 4);
        }

        [TestMethod, ExpectedException(typeof(ArithmeticException))]
        public void divideByZero()
        {
            calculator.divide(0);
        }

        [TestMethod, Timeout(100)]
        public void squareRoot()
        {
            calculator.squareRoot(100);
            Assert.Equals(calculator.getResult(), 10);
        }

        [Ignore]
        [TestMethod]
        public void multiply()
        {
            calculator.add(10);
            calculator.multiply(10);
            Assert.Equals(calculator.getResult(), 100);
        }
    }
}

