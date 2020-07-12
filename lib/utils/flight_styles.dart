import 'package:flutter/material.dart';

import './flight_colors.dart';

class FlightStyles {
  static const dropDownLabelStyle = TextStyle(
    color: FlightColors.light,
    fontFamily: 'Oxygen',
    fontSize: 15,
  );
  static const dropDownMenuItemStyle = TextStyle(
    color: FlightColors.dark,
    fontSize: 15,
    fontFamily: 'Oxygen',
    fontWeight: FontWeight.w500,
  );
  static const headline = TextStyle(
    color: FlightColors.light,
    fontSize: 28,
    fontWeight: FontWeight.w900,
    letterSpacing: 1.2,
    fontFamily: 'Oxygen',
  );
  static const searchBarText = TextStyle(
    color: FlightColors.accentColor,
    fontFamily: 'Oxygen',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const subtitle = TextStyle(
    color: FlightColors.lessDark,
    fontFamily: 'Oxygen',
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static const priceStyle = TextStyle(
    fontSize: 19,
    color: FlightColors.dark,
    fontWeight: FontWeight.bold,
    fontFamily: 'Oxygen',
  );
  static final strikedOutPriceStyle = TextStyle(
    fontSize: 16,
    color: FlightColors.lessLight,
    decoration: TextDecoration.lineThrough,
  );
}
