void main(){
  print(callGen(year :2000));
  print(callColor("White"));
  callWeb("Google",protocal:"https",port:443);
}

String callGen({int year:1})=> (year >= 1996) ? "z" : "y";

int callColor([String newColor = "Pink"]){

  List<dynamic> col = ["Red","Green"];
  col.add(newColor);
  for(var i in col){
    print(i);
  }
  return col.length;
}

void callWeb(String web,{int port = 80, String protocal = "http"})=>print("$web $port : $port");
