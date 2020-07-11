import 'package:flutter/services.dart' show SystemChrome, SystemUiOverlayStyle;

import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import './utils/flight_colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: FlightColors.light,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flight List',
      theme: ThemeData(
        primaryColor: FlightColors.accentColor,
        accentColor: FlightColors.primaryColor,
        fontFamily: 'Oxygen',
        cursorColor: FlightColors.accentColor,
        textSelectionHandleColor: FlightColors.accentColor,
      ),
      home: HomePage(),
    );
  }
}
