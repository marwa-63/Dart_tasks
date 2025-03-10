
import 'dart:io';
 
import 'Classes.dart';
import 'Functions.dart';

 

void main() {

  print("<---------------------Welcome to the pizza ordering system---------------------------->");

  while(true)
  {
    int choice=interface();
    if(choice ==2) break;
   

   int pizzaChoice =selectPizza();
   int size =selectSize();
   int extra =extraToppings();

   

   Size? pizzaSize  ;



    switch(size)
            {
              case 1:
               
              pizzaSize =Size.S;
              break;

              case 2:
              pizzaSize =Size.M;
              break;

              case 3:
              pizzaSize =Size.L;
              break;
            }

      Pizza pizza =MargheritaPizza("Margherita", pizzaSize,extra);


             switch(pizzaChoice)
            {
               
              case 1:
               
               pizza =MargheritaPizza("Margherita", pizzaSize,extra);
              break;

              case 2:
               
               pizza =PepperoniPizza("Pepperoni", pizzaSize ,extra);
              break;

              case 3:
               
               pizza =VeggiePizza("Veggie", pizzaSize ,extra);
              break;

               


            }

            String ID =generateRandomString(5);

            Order order =Order(ID,ID,pizza);
            order.orderDetails();

  }

    
   
}
 


  
 