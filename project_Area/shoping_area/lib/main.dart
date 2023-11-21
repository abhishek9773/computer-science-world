import 'package:flutter/material.dart';
import 'package:shoping_area/contants/global_variables.dart';

void main() {
  runApp( MyHomePage());
}



 

class MyHomePage extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: "Amazon clone",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black,
          ),
        ),
      ),
      onGenerateInitialRoutes: ,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Amazone clone"),
        ),
        body:Column( 
        children:[
          const Center(
           child: Text('Flutter Demo Home Page'),
      ),
      ElevatedButton(onPressed: (){}, child:Text('click'),),
      ],
      ),
      ),
    );
  }
}