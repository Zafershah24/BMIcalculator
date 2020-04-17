import 'package:flutter/material.dart';
import 'constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({this.text,this.onTap});
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          child: Center(
            child: Text(text,
              style: kLargeTxtsize,),
          ),
          height: 60,
          width: double.infinity,
          padding: EdgeInsets.only(bottom: 5),
          margin: EdgeInsets.only(top: 10,left: 70,right: 5,bottom: 15),
          decoration: new BoxDecoration(
            color: Color.fromRGBO(62, 216, 208,1),
            borderRadius: BorderRadius.circular(15),
          )

      ),
    );
  }
}