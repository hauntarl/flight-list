import 'package:flutter/material.dart';

class FlightClipperWidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);

    final controlPoint1 = Offset(
      size.width * 0.2,
      size.height - 40,
    );
    final endPoint1 = Offset(
      size.width * 0.5,
      size.height - 25,
    );
    path.quadraticBezierTo(
      controlPoint1.dx,
      controlPoint1.dy,
      endPoint1.dx,
      endPoint1.dy,
    );

    final controlPoint2 = Offset(
      size.width * 0.8,
      size.height - 5,
    );
    final endpoint2 = Offset(
      size.width,
      size.height - 70,
    );
    path.quadraticBezierTo(
      controlPoint2.dx,
      controlPoint2.dy,
      endpoint2.dx,
      endpoint2.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
