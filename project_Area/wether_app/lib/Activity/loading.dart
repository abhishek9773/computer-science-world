import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              }, 
              icon: Icon(Icons.add_to_home_screen), 
              label: Text('home page'),
            ),
          ],
        ),
      ),
    );
  }
}
