import 'dart:async';

import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => LoadingState();
}

class LoadingState extends State<Loading> {
  @override
  void initState() {
    dataloder();

    super.initState();
  }

  Future<void> dataloder() async {
    await Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('loading screen'),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/life-1.jpeg"),
                const Text("Loading..."),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
