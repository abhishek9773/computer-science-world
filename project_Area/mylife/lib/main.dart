import 'package:flutter/material.dart';
import 'package:mylife/screens/home.dart';
import 'package:mylife/screens/loading.dart';
import 'package:mylife/screens/content_page/child1.dart';
import 'package:mylife/screens/content_page/child_body.dart';
import 'package:mylife/screens/content_page/young.dart';
import 'package:mylife/screens/error.dart';
import 'package:mylife/screens/login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/child': (context) => child(),
        '/child_boy': (context) => child_boy(),
        '/young': (context) => young(),
        '/error': (context) => Error(),
        '/login': (context) => login(),
      },
    ),
  );
}
