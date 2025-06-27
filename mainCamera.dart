class CameraInfo {
  String ? name;
  int ? price;
  double ? mp;
  int ? id;
  int ? purchace;

  void show(){
    print("The camera's name is $name");
    print("The camera's price is $price");
    print("The camera's Mega Pixels is $mp");
    print("The camera's ID is $id");
    print("The number of purchases so far $purchace");


  }
bool priceHigh(){
      return price != null && price! > 50000;
    }


}