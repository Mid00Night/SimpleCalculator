import 'package:flutter/material.dart';
import 'home_page.dart';
void main() =>runApp(new MyApp());

class MyApp  extends StatelessWidget{

   @override
  Widget build(BuildContext context){

     return  GestureDetector(
         onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
         },
         child:  MaterialApp(
           debugShowCheckedModeBanner: false,
           title: "Simple Calculator",
           theme: new ThemeData(
               primarySwatch: Colors.brown
           ),
           home: new HomePage(),
         ),
     );

     throw UnimplementedError();
   }
}

