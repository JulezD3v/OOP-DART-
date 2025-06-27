class Student{
  //Properties
  String ? name;
  int ? age;
  dynamic level;
  double ?gdp;

//Constuctor
  Student( String name, int age, dynamic level, double gdp){
    this.name = name;
    this.age = age;
    this.level = level;
    this.gdp = gdp;

  }

  /*or use this single line constructor
   
  Student(  
    this.name,
    this.age,
    this.level,
    this.gdp );*/

//method
  void display(){
    print("Student name: ${this.name}");
    print("Student class: ${this.level}");
    print("Student age: ${this.age}");
    print("Student's GDP: ${this.gdp}");
  }
}

void main(){
  Student one = Student("Julie Kimani", 18, "Grade 12", 4.5);

  one.display();
}