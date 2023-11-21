import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> build() => screenconst();
}

class screenconst extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
     appBar: AppBar(
        title: Text("do it now"),
      ),
      body: Text("first app"),
      
      
    );
  }
}
