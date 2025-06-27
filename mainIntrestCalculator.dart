import 'ClassIntrest.dart';

void main(){

  Intrest i = Intrest();
  i.p = 45000;
  i.t = 5.5;
  i.r = 16.4;

  double si = i.calculator();
  print("The simple intrest is : $si");

}