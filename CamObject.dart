import 'mainCamera.dart';

void main(){

 CameraInfo c1 = CameraInfo();
 c1.name = "Canon" ;
 c1.mp = 25;
 c1.price = 96000;
 c1.id = 984357;
 c1.purchace = 1234350000;

 c1.show();

 CameraInfo c2 = CameraInfo();
 c2.name = "Sony" ;
 c2.mp = 32;
 c2.price = 40000;
 c2.id = 53785738;
 c2.purchace = 458659690000;
 
 c2.show();

 
 if(c1.priceHigh()){
  print("You  have insufficient funds to purchase ${c1.name}");
 }
  if(c2.priceHigh()){
  print("You  have insufficient funds to purchase ${c2.name}");
 }// 


 
}