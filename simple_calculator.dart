/*simple calculator*/
 
 import 'dart:io';
void main()
{
  String? input;
  bool running =true;
  
   
  while(running)
  {

    print("Enter the first number:");
    input =stdin.readLineSync()!;

   if(input == "exit")
    {
      print("Program ended"); 
      running=false;
    }
   else
    {
    int? a =  int.parse(input);

    print("Enter the second number:");
    int? b = int.parse(stdin.readLineSync()!);

   print("Enter operation(+,-,*,/):");

   String? op = stdin.readLineSync();

   

  switch(op){
     case '+' :print("Result : ${a + b}");
     break;

     case'-': print("Result : ${a - b}");
     break;

     case'*': print("Result : ${a * b}");
     break;

     case'/':
     if(b == 0) {print("invalid division , can't divide by zero");}
     else {
      print("Result: ${a.toDouble()/b.toDouble()}");
     }

     default: print("invalid opearation");

  }

  }
   


   

  }   
}
