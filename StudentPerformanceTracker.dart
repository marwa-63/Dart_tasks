  import 'dart:io';
  void main(){

      Map<String,int> students_grades ={};

       
/***  Inputs ***/
      while(true){

      print("Enter student name (or 'done' to finish): ");
      String Name = stdin.readLineSync()!;
      int? grade;

      if(Name == "done") break;
      
       print("Enter $Name's grade from 0 to 100:");
        String? input  =  stdin.readLineSync() ;
       grade = int.tryParse(input ?? '');

        while(true )
        {
          if(grade != null && grade >=0  && grade<=100) break;
         print("Invalid input , please Enter grade from 0 to 100: ");
         input  =  stdin.readLineSync() ;
         grade = int.tryParse(input ?? '');
        }
        students_grades[Name] = grade;
      
      }

      /***sort the map in descending order ***/

      var sorted_students_grades = Map.fromEntries(
    students_grades.entries.toList()..sort((a, b) => b.value.compareTo(a.value))
  );


  var highest_student = sorted_students_grades.entries.first; 
  var lowest_student = sorted_students_grades.entries.last; 

  /*** calculate average grade ***/
  double avg=0;


   students_grades.values.forEach((element){
    avg+=element;

   }
   );

   avg /= students_grades.length;

   
  /*** students above average  ***/

  List <String> above_avg_students = students_grades.entries.where( (entry) => entry.value > avg ).map( (entry) =>entry.key).toList();


  /*** print the results ***/

  print("\n----------------------------------------------------------");
   print("results:\n");
   print("Highest Grade:${highest_student.value}(${highest_student.key}) \n"  );
   print("Lowest Grade:${lowest_student.value}(${lowest_student.key})\n"  );
   print("Average Grade:${avg.toStringAsFixed(1)}\n");


   print("sorted Grades(high to low):{ ${sorted_students_grades.entries.map( (e) => "${e.key}(${e.value})").join(',') } }\n");
   print("Above Average Students:${above_avg_students}");


      

     

      
  }

  
