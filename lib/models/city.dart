import 'package:flutter/foundation.dart';

class City {
  final String name;
  final String date;
  final String imagePath;
  final int price;
  final double discount;

  const City({
    @required this.name,
    @required this.date,
    @required this.imagePath,
    @required this.price,
    this.discount = 0,
  });
}

const cities = <City>[
  City(
    name: 'Las Vegas',
    date: 'Feb 2020',
    imagePath: 'assets/images/lasvegas.jpg',
    price: 4299,
    discount: .45,
  ),
  City(
    name: 'Athens',
    date: 'April 2020',
    imagePath: 'assets/images/athens.jpg',
    price: 9999,
    discount: .55,
  ),
  City(
    name: 'Sydney',
    date: 'July 2020',
    imagePath: 'assets/images/sydney.jpeg',
    price: 7699,
    discount: .50,
  ),
];
