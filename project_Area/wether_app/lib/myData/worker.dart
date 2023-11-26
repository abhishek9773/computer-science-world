import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

/**
 * class = different, method
 * instnace -different data,
 */

class Worker {
  String location = "null";
  String temp = "null";
  String humidity = "null";
  String air_speed = "null";
  String description = "null";
  String main = "null";
  String icon = "null";

  // creating constractor
  Worker({required this.location}) {
    // if you make carly bircket {} then you can pass the value using name parameter.
    location = this.location;
  }

  Future<void> getData() async {
    try {
      Uri url = Uri.parse(

          "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=14ff4a825eea90528bc59b62da9b27cf");

      Response response = await get(url);
      Map data = jsonDecode(response.body);
      // print(data);

// Gettng data all form api.
      double temp_data = data['main'][0]['temp'];
      String humidity_data = data['main'][0]['humidity'].toString();
      double air_speed_data = data['wind']['speed'];
      String description_data = data['wether'][0]['description'];
      String main_data = data['wether'][0]['main'];
      String icon_data = data['wether'][0]['icon'];

      print(
          'icon=> $icon_data, \n temp_data +> $temp_data \n humidity_data => $humidity_data \n air_speed_data => $air_speed_data \n descirption_data => $description_data \n main_data => $main_data');

      // Assining value
      temp = temp_data.toString();
      humidity = humidity_data;
      air_speed = air_speed_data.toString();
      description = description_data.toString();
      main = main_data.toString();
      icon = icon_data.toString();
    } catch (e) {
      temp = "something is wrong try again with temp";
      humidity = "somthing is wrong try again with humidity";
      air_speed = "somthing is wrong try again with air_speed";
      main = "somthing is wrong try again with mainf";
    }
  }
}

// class errorPage extends StatelessWidget{

//   @override

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child:  Column( 
//           children: <Widget>[
//             Text("error 404 occer " , style: TextStyle( 
//               fontWeight: FontWeight.bold,
//               fontSize: 50,

//             ),)
//           ],
//         ),
//       ),
//     );
//   }
// }
