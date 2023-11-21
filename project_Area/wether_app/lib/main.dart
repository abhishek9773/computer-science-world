import 'package:flutter/material.dart';
import 'package:wether_app/Activity/home.dart';
import 'package:wether_app/Activity/loading.dart';
import 'package:wether_app/Activity/locaton.dart';

void main() {
  runApp(MaterialApp(
    routes:{
      "/" : (context) => Loading(),
      "/home" : (context) => Home(),
      "/location" : (context) => Location(),
    },

  ));
}
