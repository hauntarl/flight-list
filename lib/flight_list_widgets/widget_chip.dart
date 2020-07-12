import 'package:flutter/material.dart';

import '../utils/flight_colors.dart';
import '../utils/flight_styles.dart';

class ChipWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  ChipWidget({
    @required this.icon,
    @required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: FlightColors.chipBackground,
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            icon,
            color: FlightColors.accentColor,
            size: 14,
          ),
          SizedBox(width: 5),
          Text(
            text,
            style: FlightStyles.dropDownLabelStyle.copyWith(
              fontSize: 14,
              color: FlightColors.accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
