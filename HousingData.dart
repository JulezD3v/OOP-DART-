class Town{
  String ? name;
  dynamic address;
  int ? room;

  void display(){
    print("The house is registerd under: $name");
    print("The address: $address");
    print("The number of rooms is: $room");
  }
}

void main(){
  Town Home = Town();
  Home.name = "Julie Kimani";
  Home.address = "Joberg";
  Home.room = 30;

  Home.display();
}