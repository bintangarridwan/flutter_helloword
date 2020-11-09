import 'package:flutter/material.dart';
import 'package:flutter_helloword/SecondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: FirstPages(),
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPages extends StatefulWidget {
  @override
  _FirstPagesState createState() => _FirstPagesState();
}

class _FirstPagesState extends State<FirstPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
              Icons.menu,
              color: Colors.white),
        ),
        title: Text("First Page"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search,
                  color: Colors.white)
          )
        ],
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Hello Word!",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)
                ),
                RaisedButton(
                  child: Text("Go To Second Page",
                      style: TextStyle(fontSize: 18)
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPages()));
                    });
                  },
                )
              ]
          )
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add)),
    );
  }
}

