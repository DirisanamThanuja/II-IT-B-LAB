import java.io.*;
  
class compound_interest
{
    public static void main(String args[])
    {
        double principle = 1200, rate = 5.4, time = 2;
  
        /* Calculate compound interest */
        double CI = principle * (Math.pow((1 + rate / 100), time));
          
        System.out.println("Compound Interest = "+ CI);
    }
}