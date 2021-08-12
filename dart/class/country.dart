class Country{
  var country = "Republic of Singapore";  
  var city;
  var _animal = "Duck";
  static var color = "white";

  Country(this.city,this._animal);

  Country.thai(String city,String _animal):this(city,_animal);

  void callHi(){          //con
    print("Sawasdeekub");
  }

  String callAnimal(){
    return  this._animal;
  }

 
}
