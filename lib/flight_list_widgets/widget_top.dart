import 'package:flutter/material.dart';

import '../widgets/clipped_container_widget.dart';
import '../utils/flight_colors.dart';
import '../utils/flight_styles.dart';
import './widget_travel.dart';

class TopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        ClippedContainerWidget(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: FlightColors.light,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 50),
            Text(
              'Search Results',
              style: FlightStyles.dropDownLabelStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 30,
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 15,
                  shadowColor: FlightColors.shadow,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: FlightColors.light,
                    ),
                    child: TravelWidget(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
