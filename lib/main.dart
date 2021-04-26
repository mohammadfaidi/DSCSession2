import 'package:flutter/material.dart';
 
void main() => runApp(MyHomePage());
 
	
 
class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
 Color color1 = Colors.teal;
 Color color2=Colors.yellowAccent;
String _value = 'value';
String text1= 'BMW';
String text2= 'VW';
String text3= 'Marceds';
String text4= 'Fiat';
 bool checkBoxval = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      
     appBar: AppBar(
        
    backgroundColor: Colors.teal,
    elevation: 20,
    
        title: Text("Session2",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
        leading: Icon(Icons.person),
        centerTitle: true,
  
        //SizedBox(width: 10.0,), 

      ),
  body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    child: Container(
      height: 800,
      width: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children : [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
    custumContainer('$text1',color1),
 // SizedBox(// width:30,//),
    custumContainer('$text2',color2),
],
    ),
    SizedBox(height:50,),
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
    custumContainer('$text3',color2),
 // SizedBox(// width:30,//),
    custumContainer('$text4',color1),
],
    ),
Checkbox(value: checkBoxval, 

onChanged: (value){
setState(() {
  checkBoxval =value;
color1 = Colors.red;
color2 = Colors.blue;
text1='DSC';
text3='polo';
}); 

}),

Radio(value: "value", 
groupValue: _value, 
onChanged: (val){

  setState(() {
    _value =val;
        color1=Colors.greenAccent;
    color2=Colors.brown;
    text2='Skoda';
    text4='vrs';
  });
}),
Radio(value: "value2", 
groupValue: _value, 
onChanged: (val){

  setState(() {
    _value =val;
    color1=Colors.amber;
    color2=Colors.black;
  });
}),
        ],

      ),



    ),
  ),
    ),



    );
 }


Widget custumContainer(text,color){

  return Container(
     // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      width: 150,
      height: 150,
      alignment: Alignment.center,
      decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color:Colors.grey ,
          spreadRadius:2,
       //   blurRadius:10,
        )
      ],
            color: color,
        borderRadius:BorderRadius.circular(8),
      ),
    child: Text('$text',style: TextStyle(fontSize: 20,color: Colors.white),),

    );
}
}

