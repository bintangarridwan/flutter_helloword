import 'package:flutter/material.dart';

class SecondPages extends StatefulWidget {
  @override
  _SecondPagesState createState() => _SecondPagesState();
}

class _SecondPagesState extends State<SecondPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Pages")),
      body: Container(
        child: Center(
          child: Container(
            child: Text("Data",
              style: TextStyle(fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
              textAlign: TextAlign.center
            ),
          padding: EdgeInsets.all(20),
          color: Colors.blue,),
        ),
      ),
    );
  }
}
