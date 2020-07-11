import 'package:flutter/material.dart';

import '../utils/flight_styles.dart';
import '../utils/flight_colors.dart';
import '../models/city.dart';
import './card_widget.dart';

class HomePageBottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 15,
            top: 30,
            bottom: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Currently Watched Items',
                style: FlightStyles.subtitle,
              ),
              Text(
                'VIEW ALL (12)',
                style: FlightStyles.subtitle.copyWith(
                  color: FlightColors.primaryColor,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 260,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: cities.length,
            itemBuilder: (_, index) {
              return Container(
                width: 190,
                padding: EdgeInsets.all(10),
                child: CardWidget(cities[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
