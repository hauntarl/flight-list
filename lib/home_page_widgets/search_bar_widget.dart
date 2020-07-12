import 'package:flight_list_ui/utils/flight_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/location.dart';
import '../utils/flight_styles.dart';
import '../pages/flight_list.dart';

class SearchBarWidget extends StatefulWidget {
  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final _textEditingController = TextEditingController(text: locations[1]);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Material(
          elevation: 15,
          shadowColor: FlightColors.shadow,
          borderRadius: BorderRadius.circular(30),
          child: TextField(
            controller: _textEditingController,
            style: FlightStyles.searchBarText,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 30,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (_) => FlightList(),
              ),
            );
          },
          child: Material(
            elevation: 15,
            borderRadius: BorderRadius.circular(30),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Icon(
                Icons.search,
                color: FlightColors.accentColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
