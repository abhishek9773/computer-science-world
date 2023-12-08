import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginWith();
}

class LoginWith extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('login page'),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter you email/userName",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
