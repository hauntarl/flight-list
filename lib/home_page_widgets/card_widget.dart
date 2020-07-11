import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show NumberFormat;

import '../models/city.dart';
import '../utils/flight_styles.dart';
import '../utils/flight_colors.dart';

int _getDiscountedPrice(int price, double discount) =>
    (price - price * discount).toInt();

final _formatPrice = NumberFormat.simpleCurrency();

class CardWidget extends StatelessWidget {
  const CardWidget(this.city);

  final City city;

  @override
  Widget build(BuildContext context) {
    final discountedPrice = _getDiscountedPrice(city.price, city.discount);
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(city.imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.black.withOpacity(0.25),
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  city.name,
                  style: FlightStyles.headline.copyWith(fontSize: 20),
                  overflow: TextOverflow.fade,
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      city.date,
                      style: FlightStyles.dropDownLabelStyle,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: FlightColors.light,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      child: Text(
                        '${(city.discount * 100).toInt()}%',
                        style: TextStyle(
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 40,
          padding: EdgeInsets.only(left: 10, top: 5),
          child: Row(
            children: <Widget>[
              Text(
                '${_formatPrice.format(discountedPrice).split('.')[0]}',
                style: FlightStyles.priceStyle,
              ),
              SizedBox(width: 10),
              Text(
                '(${_formatPrice.format(city.price).split('.')[0]})',
                style: FlightStyles.strikedOutPriceStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
