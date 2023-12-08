import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        backgroundColor: Colors.amber[300],
        appBar: AppBar(
          title: const Text("home"),
          backgroundColor:Colors.blue[200],
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/life-1.jpeg',
                      width: 200,
                      height: 200,
                    ),
                      
                  ],
                ),
                Row(
                  children: [Text("welcom to home page ")],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/error');
                  },
                  child: Text("go to error page"),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
