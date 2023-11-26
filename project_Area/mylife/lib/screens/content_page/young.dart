import 'package:flutter/material.dart'; // TODO Implement this library.

class young extends StatefulWidget {
  const young({super.key});

  @override
  State<young> createState() => _youngState();
}

class _youngState extends State<young> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('itt is young '),
        ),
        body: SafeArea(
          child: Container(
            child: Text('this is the young content container'),
          ),
        ),
      ),
    );
  }
}
