import 'package:flutter/material.dart';

class BackgroundClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var roundnessFactor = 50.0;
    var paht = Path();
    paht.moveTo(0, size.height * 0.33);
    paht.lineTo(0, size.height - roundnessFactor);
    paht.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    paht.lineTo(size.width - roundnessFactor, size.height);
    paht.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundnessFactor);
    paht.lineTo(size.width, roundnessFactor * 2);
    paht.quadraticBezierTo(size.width - 10, roundnessFactor,
        size.width - roundnessFactor * 1.5, roundnessFactor * 1.5);
    paht.lineTo(
        roundnessFactor * 0.6, size.height * 0.33 - roundnessFactor * 0.3);
    paht.quadraticBezierTo(
        0, size.height * 0.33, 0, size.height * 0.33 + roundnessFactor);


    return paht;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}