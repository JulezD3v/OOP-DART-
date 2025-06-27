class Person{
  int ? id;
  String ? name;
  double ? age;
  dynamic  dob;

void display(){
  print("Insert your name: $name");
  print("Insert your Id number: $id");
  print("What is your DOB: $dob");
  print("Insert your age: $age");
}
}



void main() {
  Person p1 = Person();
  p1.name = "Julie Kimani";
  p1.id = 425667929;
  p1.age = 30;
  p1.dob = "22-March-1995";

  p1.display();
}