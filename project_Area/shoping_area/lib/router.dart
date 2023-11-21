import 'package:flutter/material.dart';
import 'package:shoping_area/features/auth/screens/auth_screens.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings:routeSettings,
        builder: ( ) => const AuthScreen(),
        );
    default:
      return: MaterialPageRoute(
       settings:routeSettings,
       builder:( ) => const Scaffold{
        body: Center(
          child: Text('scree does not exist!') ,
          ),

      }
    );
  }
}
