import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{

  double num1 = 0,num2 = 0,result = 0;
  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");


  void Add()
  {
    this.setState((){
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 + num2;
    });
  }
  void Sub()
  {
    this.setState((){
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 - num2;
    });
  }
  void Mult()
  {
    this.setState((){
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 * num2;
    });
  }
  void Div()
  {
    this.setState((){
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result =  num1/num2;
    });
  }
  void Reset()
  {
    this.setState((){
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
         //backgroundColor: Colors.indigo[700],
      appBar: new AppBar(

        title: new Text('Simple Calculator'),

        centerTitle: true,

      ),
      body: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: new TextField(
                    keyboardType: TextInputType.number,
                    controller: t1,
                    decoration: new InputDecoration(
                        hintText: "Enter number 1"
                    ),


                  ),
                  width: MediaQuery.of(context).size.width * .4,
                ),

                Container(
                  child: new TextField(
                    keyboardType: TextInputType.number,
                    controller: t2,
                    decoration: new InputDecoration(
                        hintText: "Enter number 2"
                    ),


                  ),
                  width: MediaQuery.of(context).size.width * .4,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+" , style: new TextStyle(
                      fontSize: 25, color: Colors.white)),
                  color: Colors.brown[300],
                    onPressed: () => {Add()}

                ),
                new MaterialButton(
                    child: new Text("-", style: new TextStyle(
                      fontSize: 30, color: Colors.white
                    ),),

                    color: Colors.brown[300],
                    onPressed: () => {Sub()}
                ),

              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                new MaterialButton(
                    child: new Text("x" , style: new TextStyle(
                        fontSize: 25, color: Colors.white)),
                    color: Colors.brown[300],
                    onPressed: () => {Mult()}
                ),

                new MaterialButton(
                    child: new Text("÷" , style: new TextStyle(
                        fontSize: 25 , color: Colors.white)),
                    color: Colors.brown[300],
                    onPressed: () => {Div()}
                ),

              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new MaterialButton(
                    child: new Text("Reset" , style: new TextStyle(
                      color: Colors.white
                    ),),
                    color: Colors.brown[300],
                    onPressed: () => {Reset()},
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(25),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: new Text("Result: $result",
                style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[500]
                ),

              ),
            ),
          ],
        ),
      ),
    );

    throw UnimplementedError();
  }
}