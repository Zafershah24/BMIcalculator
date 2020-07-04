import 'package:bmucalculator/Bottom_button.dart';
import 'package:bmucalculator/constants.dart';
import 'package:bmucalculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'Bottom_button.dart';
import 'Calculator_brain.dart';

class Result_page extends StatelessWidget {

  Result_page({ @required this.bmiResult, @required this.resultText,@required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

//  AnimationController controller;
//
//  @override
//  void initState(){
//    super.initState();
//    controller=AnimationController(
//      duration: Duration(seconds: 1),
//      vsync:
//    )
//  }




    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromRGBO(11, 47, 77,1),
        title: Text('BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,

          ),),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child:Text('YOUR RESULT',
              style:kTitleTxtsize)
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(colour: kActivecardcolor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
             Text(bmiResult,style: kRESULTTxtsize,),
             Text(resultText.toUpperCase(),style: kRESULTsize,),
             Text(interpretation,style: kRESULTINFosize,
             textAlign: TextAlign.center,),




           ], ),),

          ),
         GestureDetector   ( onTap: (){
           Navigator.pop(context);  },
         child: Container(
         child: Center(
    child: Text('RE-CALCULATE',
    style: kLargeTxtsize,),
    ),
    height: 70,
    width: double.infinity,
    padding: EdgeInsets.only(bottom: 5),
    margin: EdgeInsets.only(top:15),
    decoration: new BoxDecoration(
    color: Color.fromRGBO(118, 222, 173,1),
    borderRadius: BorderRadius.circular(15),
    )

    ),
        ),
        ],
      )
      ,
    );
  }
}
