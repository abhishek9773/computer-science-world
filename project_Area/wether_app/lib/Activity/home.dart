import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchContorller = new TextEditingController();
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
    Map? info = ModalRoute.of(context)!.settings.arguments as Map?;
    String temp = ((info?['temp_value']).toString()).substring(0, 3);
    String icon = info?['icon_value'];
    String Getcity = info?['city_value'];
    String hum = info?['hum_value'];
    String air = info?['air_value'];
    String des = info?['des_value'];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Colors.amber,
          ),
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
            ),
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
                Container(
                  // this is the main container.

                  // search container
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(2525)),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/loading", arguments: {
                            "searchText": searchContorller.text,
                            
                          });
                        },
                        child: Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: searchContorller,
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
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.black12,
                          ),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 0),
                          padding: const EdgeInsets.all(14),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/cloud.png",
                                height: 50,
                                width: 50,
                              ),
                              Row(
                                children: [Text("$des"), Text("$Getcity")],
                              )
                            ],
                          )),
                    ),
                  ],
                ),
                Row(
                  // this is tempratre box
                  children: [
                    Expanded(
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(15)),
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        padding: EdgeInsets.all(26),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(
                                  "https://openweathermap.org/img/wn/$icon@2x.png",
                                  height: 50,
                                  width: 50,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "$temp°C ",
                                  style: const TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
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
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/sun_icon.png',
                                  height: 50,
                                  width: 50,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "$hum",
                                  style: const TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  "km/hr",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/air_speed.png",
                                    height: 50,
                                    width: 40,
                                  ),
                                ],
                              ),
                              Column(children: [
                                Text(
                                  "$air %",
                                  style: const TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ])
                            ],
                          )),
                    ),
                  ],
                ),
                Container(
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Support the  developer ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Data provided by openWether"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
