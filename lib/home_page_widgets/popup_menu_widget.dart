import 'package:flutter/material.dart';

import '../utils/flight_styles.dart';
import '../utils/flight_colors.dart';
import '../models/location.dart';

class PopupMenuWidget extends StatefulWidget {
  @override
  _PopupMenuWidgetState createState() => _PopupMenuWidgetState();
}

class _PopupMenuWidgetState extends State<PopupMenuWidget> {
  var _selectedLocation = 0;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      initialValue: _selectedLocation,
      onSelected: (index) => setState(() => _selectedLocation = index),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            locations[_selectedLocation],
            style: FlightStyles.dropDownLabelStyle,
          ),
          SizedBox(width: 2),
          Icon(
            Icons.keyboard_arrow_down,
            color: FlightColors.light,
            size: 18,
          ),
        ],
      ),
      itemBuilder: (_) => <PopupMenuItem<int>>[
        PopupMenuItem(
          child: Text(
            locations[0],
            style: FlightStyles.dropDownMenuItemStyle,
          ),
          value: 0,
        ),
        PopupMenuItem(
          child: Text(
            locations[1],
            style: FlightStyles.dropDownMenuItemStyle,
          ),
          value: 1,
        ),
      ],
    );
  }
}
