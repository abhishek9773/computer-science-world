import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "first anme",
      theme:ThemeData(
        primarySwatch: Colors.red,
      ),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context)=>  Scaffold(
          appBar: AppBar(
            title: Text('home page'),

          ),
          body: Text('thisi shomw page body'),
        ),

        '/second': (context)=> Scaffold(
          appBar: AppBar(
            title: Text("this i sseocnd visit"),
          ),
          body: Text("welcom to second page"),
        )
      },
    );
  }
}

class homeScreen extends StatelessWidget {
  Widget build(BuildContext constext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('this is bar area'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child:
                  const Text('it can you here me i am the class is body area'),
            ),
            ElevatedButton(
              onPressed: () {
                const Text("think for using");
              },
              child: const Text("click me NOw"),
            ),
          ],
        ),
      ),
    );
  }
}
