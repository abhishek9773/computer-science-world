import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:wether_app/myData/worker.dart';
import 'package:wether_app/Activity/home.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Loading> {
  String city = "delhi";
  String temp = 'null';
  String hum = 'null';
  String air_speed = 'null';
  String des = 'null';
  String main = 'null';
  String icon = 'null';

  void startApp() async {
    Worker instance = Worker(location: city);
    await instance.getData();
    temp = instance.temp;
    hum = instance.humidity;
    air_speed = instance.air_speed;
    des = instance.description;
    main = instance.main;
    icon = instance.icon;

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      "temp_value": temp,
      "hum_value": hum,
      "air_speed_value": air_speed,
      "des_value": des,
      "icon_value" : icon,
      "city_value" : city,
    });

    print(instance.air_speed);
  }

  @override
  void initState() {
    super.initState();
    startApp();
    print("init sate method of loading file");
  }

  @override
  void setState(VoidCallback fn) {
    startApp();
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/a.png", height: 240, width: 240),
              const Text(
                "welcom to wether app",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "data is processing...",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SpinKitCircle(
                color: Colors.red[300],
                size: 50.0,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.green[400],
    );
  }
}
