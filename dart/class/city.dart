import 'country.dart';
import 'problem.dart';

class City extends Country with Problem{
  City():super("Republic of Singapore","Lion");

  void callSuper(){
    print("City of sing :"+super.city);
    super.callHi();
  
  }

  @override
  String callAnimal(){
    return "Lion King";
  }


   String clock()=> "12:00";
  
}
