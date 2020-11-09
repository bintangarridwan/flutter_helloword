import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        body: Center(
          child: stateFull(text: "Hello Word!")
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  //variable
  final String text;

  //constructor
  Heading({Key key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold
    ),);
  }
}

class stateFull extends StatefulWidget {
  final String text;

  stateFull({this.text, Key key}) : super(key: key);

  @override
  _stateFullState createState() => _stateFullState();
}

class _stateFullState extends State<stateFull> {
  double _size = 18.0;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _size)),
      RaisedButton(child: Text("Up"),
        onPressed: (){
        setState(() {
          _size = 24.0;
        });
        },)
    ],);
  }
}
