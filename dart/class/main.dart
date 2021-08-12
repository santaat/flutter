import 'country.dart';
import 'city.dart';
import 'problem.dart';
void main(){
  print("hello world");

  // Country item = new Country.thai("Singapore","Lion");

  // print("Welcome to "+item.country);
  // print("เมือง "+item.city);
  // item.callHi();
  // print("Animal : "+item.callAnimal());

  // print("Color of singapore : "+Country.color);

  var order = City();
  print("Welcome "+ order.country);

  print(order.callAnimal());

  order.callProblem();
  print(order.clock());

}