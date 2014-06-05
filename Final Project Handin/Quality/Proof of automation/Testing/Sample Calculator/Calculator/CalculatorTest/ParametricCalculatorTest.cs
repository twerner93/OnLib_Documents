using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Calc;

namespace CalculatorTest
{
    [TestClass]
    public class ParametricCalculatorTest
    {
        int sum1, sum2, result;

        private static Calculator calculator = new Calculator();

        public ParametricCalculatorTest(int sum1, int sum2, int result)
        {
            this.sum1 = sum1;
            this.sum2 = sum2;
            this.result = result;
        }

        @Parameters
 	public static Collection values() {
 		return Arrays.asList(new Object[][] {
 				{1, 1, 2 }, // 1+1=2
 				{2, 2, 4 }, // 2+2=4
 				{2, 2, 5 }  // 2+2=5 ???
 
 		});
 	}

        [ClassInitialize]
        public void clearCalculator()
        {
            calculator.clear();
        }

        [TestMethod]
        public void verifySum()
        {
            calculator.add(sum1);
            calculator.add(sum2);
            Assert.Equals(calculator.getResult(), result);
        }
    }
}
