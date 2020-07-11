import 'package:flutter/material.dart';

import './popup_menu_widget.dart';
import '../utils/flight_colors.dart';

class LocationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: FlightColors.light,
          size: 20,
        ),
        SizedBox(width: 10),
        PopupMenuWidget(),
        Spacer(),
        Icon(
          Icons.settings,
          color: FlightColors.light,
        ),
      ],
    );
  }
}
