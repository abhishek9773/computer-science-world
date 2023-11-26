import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return error();
  }
}

class error extends Error {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("error"),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Text("oop!! somthing is wrong", style:TextStyle( 
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.red[500],

                  ),
                ), 
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/home");
                  },
                  child: Text('Home page'),
                ),
              ],
            ),
          ),
        ));
  }
}
