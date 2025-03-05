
import 'dart:io';


safeDivide(int? a,int? b)
{
  if( b==null || b==0)
  {
    print("safeDivid($a,$b)->Output:cannot divide by zero");
  }
  else if(a==null)
  {
    print("safeDivid($a,$b)->Output:0");
  }
  else
  {
    print("safeDivid($a,$b)->Output:${a/b}");
  }
}

void main() {

    


     print("Enter The First Number:");
      String? input = stdin.readLineSync()!;
      int? a =int.tryParse(input ?? '');

       print("Enter The Second Number:");
      input = stdin.readLineSync()!;
      int? b =int.tryParse(input ?? '');

    safeDivide(a, b);


}
