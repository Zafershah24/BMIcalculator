import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour,this.cardChild,this.onPressed});
  final Widget cardChild;
  final  Color colour;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,

        decoration: BoxDecoration(
          color:colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15),
      ),
    );
  }
}

