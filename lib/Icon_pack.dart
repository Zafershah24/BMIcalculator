import 'package:bmucalculator/constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class IconCard extends StatelessWidget {
  IconCard({this.icon,this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: Colors.white,

        ),
        SizedBox(
          height: 13,
        ),
        Text(label,
          style: kLabeltextstyle),

      ],
    );
  }
}
