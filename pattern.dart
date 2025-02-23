  import 'dart:io';
  void main(){

    print("Enter the number of rows:");
    int? a = int.parse(stdin.readLineSync()!);
    String s="";
     
    for(int i=1 ;i<=a ;i++)
    {
      for(int j=1;j<=i;j++)
      {
        s+="*";
      }
      print("$s\n");
      s="";
    }



  }
