import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"flutter app",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: DashBoardScreen(),
    );
    
  }
}

class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),

        
      ),
      body:Container(
        color: Colors.blue.shade50,
        )
    );
  }
}
