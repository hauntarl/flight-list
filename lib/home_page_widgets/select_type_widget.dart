import 'package:flutter/material.dart';

import './choice_chip_widget.dart';

class SelectTypeWidget extends StatefulWidget {
  @override
  _SelectTypeWidgetState createState() => _SelectTypeWidgetState();
}

class _SelectTypeWidgetState extends State<SelectTypeWidget> {
  var _isFlightSelected = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ChoiceChipWidget(
          choice: 'Flights',
          icon: Icons.flight,
          isSelected: _isFlightSelected,
          onTap: () => setState(() => _isFlightSelected = true),
        ),
        SizedBox(width: 5),
        ChoiceChipWidget(
          choice: 'Hotels',
          icon: Icons.hotel,
          isSelected: !_isFlightSelected,
          onTap: () => setState(() => _isFlightSelected = false),
        ),
      ],
    );
  }
}
