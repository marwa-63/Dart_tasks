  import 'dart:io';
  void main(){

    bool running= true;
    int group_size=0;
    int remaining_Seat=0;

    print("Enter group size:");
       group_size = int.parse(stdin.readLineSync()!) ;

     if(group_size == 0)
     {
      running=false;
      print("All buses handled. programm ended");
     }
     else{
     remaining_Seat = 12 - group_size;
     print("remaining seats: $remaining_Seat");
     }
      


     while(running)
     {
      
     print("Enter group size:");
      group_size = int.parse(stdin.readLineSync()!) ;

      
       if(group_size ==0)  
       {
       running=false;
       print("All buses handled. programm ended");
       }
      else if (group_size > remaining_Seat)
      {
        print("Not enough seats! Moving to the next bus.  ");
        print("New Bus Started");
        remaining_Seat = 12 - group_size;
        print("remaining seats: $remaining_Seat");

      }
      else {
        remaining_Seat -= group_size;
        print("remaining seats: $remaining_Seat");
      }
     


     }


  }

  
