import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    print("This is the init state of home page.");
  }

  @override
  void dispose() {
    super.dispose();
    print("we are callding dispose method");
  }

  @override
  Widget build(BuildContext context) {
    // Map info = ModalRoute.of(context).settings.arguments;
    var cityName = ["delhi", "bhagalpur", "london", "Mumbai"];
    final _random = new Random();
    var city = cityName[_random.nextInt(cityName.length)];

    return Scaffold(
      appBar: PreferredSize( 
        preferredSize: Size.fromHeight(0),
        child: AppBar( 
          backgroundColor: Colors.amber,
        ),
      ),
      body: SafeArea(
        child: Container(
          //  decoration: BoxDecoration( 
          //     gradient: LinearGradient( 
          //      begin: Alignment.topCenter,
          //      end: Alignment.bottomCenter,
          //      stops: [
          //         0.1,
          //         0.5
          //         ],
          //        colors:[
          //          Colors.blue,
          //          Colors.pinkAccent,
          //           Colors.green
          //          ]


          //         ),
          //       ),
          child: Column(
            children: [
              Container(     // this is the main container.
               
                // search container
                padding: EdgeInsets.symmetric(horizontal: 3),
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(2525)),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Any city Name = $city"),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                 
                children: [
                  Expanded(
                    child: Container( 
                      decoration: BoxDecoration( 
                        borderRadius:BorderRadius.circular(14) ,
                        color: const Color.fromARGB(255, 189, 59, 59).withOpacity(0.5),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                      padding: EdgeInsets.all(14),
                      child: Text("Text"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 300,
                      decoration:BoxDecoration( 
                        color: const Color.fromARGB(255, 124, 124, 121),
                        borderRadius: BorderRadius.circular(15)
                      ) ,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      padding: EdgeInsets.all(26),
                      child: Text("second box"),
                    
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12,
                    
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      padding: EdgeInsets.all(20),
                      child: Text("3 box"),
                    
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration( 
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(15),
                    
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      padding: EdgeInsets.all(20),
                      child: Text("4 box"),
                    ),
                  ),
                ],
              ),
              Container(
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Support the  developer "),
                    Text("Data provided by openWether"),
                  ],

                  
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
