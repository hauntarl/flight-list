import 'package:flutter/material.dart';

import '../utils/flight_colors.dart';
import '../utils/flight_styles.dart';

class ChoiceChipWidget extends StatelessWidget {
  ChoiceChipWidget({
    @required this.icon,
    @required this.choice,
    @required this.isSelected,
    this.onTap,
  });

  final IconData icon;
  final String choice;
  final bool isSelected;
  final Function onTap;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected ? Colors.white24 : Colors.transparent,
        ),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: 20,
              color: FlightColors.light,
            ),
            SizedBox(width: 5),
            Text(
              choice,
              style: FlightStyles.dropDownLabelStyle,
            ),
          ],
        ),
      ),
    );
  }
}
