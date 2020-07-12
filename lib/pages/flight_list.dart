import 'package:flutter/material.dart';

import '../flight_list_widgets/widget_top.dart';
import '../utils/flight_styles.dart';
import '../flight_list_widgets/widget_card.dart';
import '../models/flight.dart';

class FlightList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: size.height * .3,
              width: size.width,
              child: TopWidget(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 45, bottom: 5),
              child: Text(
                'Best Deals for Next 6 months',
                style: FlightStyles.subtitle,
              ),
            ),
            ...List.generate(
              flights.length,
              (index) => CardWidget(flights[index]),
            ),
          ],
        ),
      ),
    );
  }
}
