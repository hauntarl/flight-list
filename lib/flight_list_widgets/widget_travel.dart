import 'package:flight_list_ui/models/location.dart';
import 'package:flutter/material.dart';

import '../utils/flight_colors.dart';
import '../utils/flight_styles.dart';

class TravelWidget extends StatefulWidget {
  @override
  _TravelWidgetState createState() => _TravelWidgetState();
}

class _TravelWidgetState extends State<TravelWidget> {
  final _selectedStyle = FlightStyles.searchBarText.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w900,
  );

  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                locations[0],
                style:
                    _isSelected ? _selectedStyle : FlightStyles.searchBarText,
                overflow: TextOverflow.fade,
                softWrap: false,
              ),
              SizedBox(height: 10),
              Divider(
                color: FlightColors.borderColor,
                height: 2,
                thickness: 1.25,
                endIndent: 50,
              ),
              SizedBox(height: 10),
              Text(
                locations[1],
                style:
                    _isSelected ? FlightStyles.searchBarText : _selectedStyle,
                overflow: TextOverflow.fade,
                softWrap: false,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => setState(() => _isSelected = !_isSelected),
            child: Icon(
              Icons.swap_vert,
              size: 40,
              color: FlightColors.accentColor,
            ),
          ),
        ),
      ],
    );
  }
}
