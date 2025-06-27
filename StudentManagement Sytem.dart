class Student{
  String ? name;
  double? age ;
  int? level;
  String? grade;

  Student(String name, double age, int level, String grade){
    this.name = name;
    this.age = age;
    this.level = level;
    this. grade = grade;
  }

  void display(){
    print("The students data is as follows");
    print("Name: $name \n Age:$age \n Level:$level \n GDP: $grade");
  }

}

void main(){
  List< Student> students =[];
  students.add(Student( "Julie Kimani ",19, 3, "A*"));
  students.add(Student("Adam White", 19, 3, "B"));
  students.add(Student("Light Yagami", 19, 3, "A-"));
  students.add(Student("Powder Jinx", 19, 3, "A"));

  for(var student in students){
    student.display();
  }
}