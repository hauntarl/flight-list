import 'package:flutter/foundation.dart';

class Flight {
  final String name;
  final String date;
  final double rating;
  final int price;
  final double discount;

  const Flight({
    @required this.name,
    @required this.date,
    @required this.rating,
    @required this.price,
    @required this.discount,
  });
}

const flights = <Flight>[
  Flight(
    name: 'Cathway Pacific',
    date: 'June 2020',
    rating: 4.6,
    price: 9999,
    discount: .55,
  ),
  Flight(
    name: 'American Airlines',
    date: 'Feb 2020',
    rating: 4.3,
    price: 6999,
    discount: .15,
  ),
  Flight(
    name: 'Jet Airways',
    date: 'Jan 2020',
    rating: 4.4,
    price: 7999,
    discount: .2,
  ),
  Flight(
    name: 'British Airlines',
    date: 'Jan 2020',
    rating: 4.8,
    price: 8999,
    discount: .2,
  ),
];
