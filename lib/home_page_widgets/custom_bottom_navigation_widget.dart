import 'package:flutter/material.dart';

import '../utils/flight_colors.dart';
import '../utils/flight_styles.dart';

class CustomBottomNavigationWidget extends StatefulWidget {
  @override
  _CustomBottomNavigationWidgetState createState() =>
      _CustomBottomNavigationWidgetState();
}

class _CustomBottomNavigationWidgetState
    extends State<CustomBottomNavigationWidget> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, -1),
            color: FlightColors.dark.withOpacity(0.05),
            blurRadius: 10,
            spreadRadius: 10,
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) => setState(() => _index = value),
        type: BottomNavigationBarType.shifting,
        unselectedIconTheme: IconThemeData(
          color: FlightColors.accentColor,
          size: 28,
        ),
        unselectedLabelStyle: FlightStyles.searchBarText.copyWith(
          fontSize: 14,
        ),
        selectedIconTheme: IconThemeData(
          color: FlightColors.primaryColor,
          size: 28,
        ),
        selectedLabelStyle: FlightStyles.searchBarText.copyWith(
          fontSize: 14,
        ),
        selectedItemColor: FlightColors.primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Watchlist'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            title: Text('Deals'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notifications'),
          ),
        ],
      ),
    );
  }
}
