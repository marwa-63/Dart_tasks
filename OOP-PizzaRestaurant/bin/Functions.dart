import 'dart:io';
import 'dart:math';



int interface()
{
   int? choice;

  print("1.Order a Pizza");
  print("2.Exit");
  print("Enter your choice:");

  while(true)
  {
    String? input =stdin.readLineSync()!;
    choice = int.tryParse(input ?? '');
    if( choice != null && choice>0 && choice<3) {break;}
    else {print("inval input , Enter 1 or 2");}

  }
  return choice;
}

selectPizza()
{
   int? choice;
  print(" Please , selects a pizza type:\n1. Margherita Pizza\n2. Pepperoni Pizza\n3. VeggiePizza");
   while(true)
  {
    String? input =stdin.readLineSync()!;
    choice = int.tryParse(input ?? '');
    if( choice != null && choice>0 && choice<=3) {break;}
    else {print("inval input , Enter 1 or 2 or 3");}

  }
   return choice;
}

selectSize()
{
   int? choice;
  print("please, Choose size:");
  print("1.small\n2.medium\n3.large");
   while(true)
  {
    String? input =stdin.readLineSync()!;
     choice = int.tryParse(input ?? '');
    if( choice != null && choice>0 && choice<=3) {break;}
    else {print("inval input , Enter 1 or 2 or 3");}

  }
   return choice;
}

extraToppings()
{

  int? choice;

  print("Do you want extra toppings?");
   print("1.Yes\n2.No");

   while(true)
  {
    String? input =stdin.readLineSync()!;
     choice = int.tryParse(input ?? '');
    if( choice != null && choice>0 && choice<3) {break;}
    else {print("inval input , Enter 1 or 2 ");}

  }
  return choice;

}



String generateRandomString(int length) {
  const String chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  Random random = Random();
  
  return List.generate(length, (index) => chars[random.nextInt(chars.length)]).join();
}