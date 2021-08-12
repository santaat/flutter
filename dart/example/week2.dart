void main(){
  print(callGen(year :2000)); //call fx callGen โดยกำหนดตัวแปล year เป็น 2000
  print(callColor("White")); 
  callWeb("Google",protocal:"https",port:443); 
}

String callGen({int year:1})=> (year >= 1996) ? "z" : "y"; //arrow fx if(condition)?"statement":"statement";.

int callColor([String newColor = "Pink"]){

  List<dynamic> col = ["Red","Green"]; //List<type> variable =[];.
  col.add(newColor); // add new list by parameter to col online11.
  for(var i in col){ //on line 13 to 15 for each.
    print(i);
  }
  return col.length; //return length of col.
}

void callWeb(String web,{int port = 80, String protocal = "http"})=>print("$web $port : $port"); 
