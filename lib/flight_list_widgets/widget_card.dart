import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show NumberFormat;

import '../utils/flight_colors.dart';
import '../utils/flight_styles.dart';
import '../models/flight.dart';
import './widget_chip.dart';

int _getDiscountedPrice(int price, double discount) =>
    (price - price * discount).toInt();

final _formatPrice = NumberFormat.simpleCurrency();

class CardWidget extends StatelessWidget {
  const CardWidget(this.flight);

  final Flight flight;

  @override
  Widget build(BuildContext context) {
    final discountedPrice = _getDiscountedPrice(flight.price, flight.discount);
    return Stack(
      children: <Widget>[
        Container(
          constraints: BoxConstraints(minHeight: 150),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: FlightColors.borderColor,
                width: 1,
              ),
            ),
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 40,
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '${_formatPrice.format(discountedPrice).split('.')[0]}',
                        style: FlightStyles.priceStyle.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: FlightColors.lessDark,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '(${_formatPrice.format(flight.price).split('.')[0]})',
                        style: FlightStyles.strikedOutPriceStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Wrap(
                  alignment: WrapAlignment.start,
                  runSpacing: 5,
                  children: <Widget>[
                    ChipWidget(
                      icon: Icons.calendar_today,
                      text: flight.date,
                    ),
                    SizedBox(width: 10),
                    ChipWidget(
                      icon: Icons.flight,
                      text: flight.name,
                    ),
                    SizedBox(width: 10),
                    ChipWidget(
                      icon: Icons.star,
                      text: flight.rating.toString(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 25,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: FlightColors.discountBackground,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(8),
            child: Text(
              '${(flight.discount * 100).toInt()}%',
              style: TextStyle(
                color: FlightColors.primaryColor,
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        )
      ],
    );
  }
}
