import 'package:flutter/material.dart';

import '../widgets/flight_clipper_widget.dart';
import '../utils/flight_colors.dart';
import '../utils/flight_styles.dart';
import './location_widget.dart';
import './search_bar_widget.dart';
import './select_type_widget.dart';

class HomePageTopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: FlightClipperWidget(),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlightColors.primaryStart,
                  FlightColors.primaryEnd,
                ],
              ),
            ),
            child: Column(
              children: <Widget>[
                LocationWidget(),
                Spacer(),
                Text(
                  'Where would\nyou want to go?',
                  style: FlightStyles.headline,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: SearchBarWidget(),
                ),
                SizedBox(height: 20),
                SelectTypeWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
