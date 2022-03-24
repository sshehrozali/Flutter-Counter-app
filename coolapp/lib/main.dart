import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("You Love Pressing? 😏"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),

        // Body
        body: Center(
            child: Text(
          '${counter}',
          style: TextStyle(fontSize: 75, fontWeight: FontWeight.bold),
        )),

        // Button
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Text(
            "+",
            style: TextStyle(fontSize: 50),
          ),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
