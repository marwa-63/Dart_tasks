 import 'dart:io';
import 'dart:math';


 enum Size  {L,M,S}

  abstract class Pizza 
 {
  String? name;
  double price=50;
  int extra =0;
  Size? pizzaSize ;
  Pizza(this.name,this.pizzaSize,this.extra);
 calculatePrice();
 void pizzaDetails();
  
 }
 class MargheritaPizza extends Pizza
 {
    MargheritaPizza(super.name,super.pizzaSize,super.extra);
    List toppings =["Tomato sauce","Mozzarella","Tomatoes"];
      

   @override
  calculatePrice() {
    if(super.pizzaSize == Size.M){ super.price +=50; }
    else if(super.pizzaSize == Size.L) {super.price +=100;}
    if(super.extra == 1)
    {
      super.price +=50;

    }
    return super.price;
    
  }
  @override
  void pizzaDetails() {
    print(" Margherita Pizza toppings:$toppings");
  }



 }

 class PepperoniPizza extends Pizza
 {
    
    
  PepperoniPizza(super.name,super.pizzaSize ,super.extra);
  List toppings =["Tomato sauce","Mozzarella","Pepperoni"];
   

   @override
  calculatePrice() {
    if(super.pizzaSize == Size.M) {super.price+=100;}
    else if(super.pizzaSize == Size.L) {super.price +=150;}
    if(super.extra == 1)
    {
      super.price +=70;

    }
    return super.price;
    
  }
  @override
  void pizzaDetails() {
    print(" Pepperoni Pizza toppings:$toppings");
  }

 }

 class VeggiePizza extends Pizza
 {
   VeggiePizza(super.name,super.pizzaSize ,super.extra);

   List toppings =["Tomato sauce","Mozzarella","Tomatoes","Olives","onions"];
   

   @override
  calculatePrice() {
    if(super.pizzaSize == Size.M) {super.price+=55;}
    else if(super.pizzaSize == Size.L) {super.price +=110;}
     if(super.extra == 1)
    {
      super.price +=50;

    }
    return super.price;
    
  }
  @override
  void pizzaDetails() {
    print("Veggie Pizza toppings:$toppings");
  }

 }

 class Order
 {
    String? orderID;
    String?  customerID;
    Pizza pizzaObject ;

    Order(this.customerID,this.orderID,this.pizzaObject);

    orderDetails()
    {
      print("Order details:");
      pizzaObject.pizzaDetails();
      print("Total price:${pizzaObject.calculatePrice()}");
      confirmOrder();
    }
     
    
     confirmOrder() {

      print("Do you want to confirm order?");
      print("1.Yes\n2.No");

      String input =stdin.readLineSync()!;
       int ans = int.parse(input);
       if(ans==1)
       {
         _payOrder();
       }

       
    
    }
    _payOrder(){
      print("Enter the money");
       String? input =stdin.readLineSync()!;
       int money = int.parse(input);
       while(money < pizzaObject.price)
       {
        print("Not enough money,Enter again");
         input =stdin.readLineSync()!;
         money = int.parse(input);
       }

       print("The rest of the money:${money-pizzaObject.price}");
       print("Thanks for visiting ._.");


    }

 }

   
