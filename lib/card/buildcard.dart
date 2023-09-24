import 'package:flutter/material.dart';
import 'package:matket/advcard.dart';

Widget buldADV(adv) => Container(
  padding: EdgeInsets.only(top: 20),
    margin: EdgeInsets.symmetric(horizontal: 40),
    width: 450,
    height: 300,
    color: Colors.white,
    child: Center(
      child: Column(children: [
        Image.asset(
          adv.path,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 4,
        ),
      ]),
    ));
