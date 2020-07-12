import 'package:flutter/material.dart';

import '../utils/flight_colors.dart';
import './flight_clipper_widget.dart';

class ClippedContainerWidget extends StatelessWidget {
  ClippedContainerWidget({this.child, this.padding});

  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: FlightClipperWidget(),
      child: Container(
        height: double.infinity,
        padding: padding,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              FlightColors.primaryStart,
              FlightColors.primaryEnd,
            ],
          ),
        ),
        alignment: Alignment.topLeft,
        child: child,
      ),
    );
  }
}
