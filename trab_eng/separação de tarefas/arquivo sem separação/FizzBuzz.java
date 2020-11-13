import java.util.*;
class FizzBuzz
{
    public static void main(String args[])
    { 
        int n = 100;
 
        // criando o loop para 100 vezes
        for (int i=1; i<=n; i++)                                 
        {
           //testando se o numero é divisivel por 15
        	//caso seja, printar FizzBuzz
            if (i % 15 == 0)                                                 
                System.out.print("FizzBuzz"+" "); 
            
            //testando se o numero é divisivel por 5
            //caso seja, printar Buzz
            else if (i % 5 == 0)     
                System.out.print("Buzz" + " "); 
 
            //testando se o numero é divisivel por 3
        	//caso seja, printar Fizz
            else if (i % 3 == 0)     
                System.out.print("Fizz" + " ");
                 
            else // printa os numeros
                System.out.print(i + " ");                         
        }
    }
}