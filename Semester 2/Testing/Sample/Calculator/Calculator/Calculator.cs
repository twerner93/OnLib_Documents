﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calc
{
    public class Calculator
    {
        private static int result;

        public void add(int n)
        {
            result = result + n;
        }

        public void subtract(int n)
        {
            result = result - 1;          //Bug : result = result - n
        }

        public void multiply(int n) { }     //Not implemented yet

        public void divide(int n)
        {
            result = result / n;
        }

        public void square(int n)
        {
            result = n * n;
        }

        public void squareRoot(int n)
        {
            for (; ; ) ;                   //Bug : Endlosschleife
        }

        public void clear()
        {             // Ergebnis löschen
            result = 0;
        }

        public void switchOn()
        {                                 // Bildschirm einschalten, Piepsen, oder was
            result = 0;                   // Taschenrechner halt so tun
        }

        public void switchOff() { }	     // Ausschalten

        public int getResult()
        {
            return result;
        }
    }
}
