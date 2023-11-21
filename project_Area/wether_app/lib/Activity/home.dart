import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  String city = 'delhi';

  void getData() async {
    Response response = await get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=ded3f403205a313e9105b8333c1e8010'));
    Map data = jsonDecode(response.body);
    print(data['name']);
  }

  @override
  void initState() {
    super.initState();
    print("This is the init state");
    getData();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print("this is the setSate method");
  }

  @override
  void dispose() {
    super.dispose();
    print("we are callding dispose method");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home page"),
        ),
        body: Column(
          children: <Widget>[
            TextButton(
              onPressed: () => setState(() {
                counter++;
              }),
              child: Text("click me"),
            ),
            Text('$counter'),
          ],
        ));
  }
}
