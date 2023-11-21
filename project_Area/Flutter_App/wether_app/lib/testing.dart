import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firstScreen(),
      routes: {
        '/Screens/second_screen.dart' : (context)=> const SecondScreen();
      },
    );
  }
}

class firstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('titleScreen'),
        ),
        body: Container(
          child: Text("this isthecontainer area"),
        ));
  }
}


