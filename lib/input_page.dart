import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'Icon_pack.dart';
import 'constants.dart';

enum Gender{Male,Female}
int height = 180;
int weight =60;
int age=20;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
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
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(
                  onPressed: (){
                    setState(() {
                      selectedGender=Gender.Male;
                    });
                  },
                  colour: selectedGender==Gender.Male?kActivecardcolor :kInactivecardcolor,
                  cardChild: IconCard(
                    icon: FontAwesomeIcons.male,
                    label: 'MALE',
                  ),

                )),
                Expanded(child: ReusableCard(
               onPressed: () {
                 setState(() {
                   selectedGender = Gender.Female;
                 });
               },
                  colour: selectedGender==Gender.Female?kActivecardcolor :kInactivecardcolor,
                  cardChild: IconCard(
                    icon: FontAwesomeIcons.female,
                    label: 'FEMALE',
                  ),
      ),


                ),],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: kActivecardcolor,
            cardChild: Column(

mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('HEIGHT',
                style: kLabeltextstyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline:TextBaseline.alphabetic ,
                  children: <Widget>[
                    Text(height.toString(),
                    style: kIntegersize,),
                    Text('cm',
                    style: kLabeltextstyle,)
                  ],
                ),
                SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14,


                    ),
                    overlayColor: Colors.white,
                        overlayShape:
                      RoundSliderOverlayShape(overlayRadius: 23),

                        thumbColor: Color.fromRGBO(20, 86, 140,1),
                   ),
                  child: Slider(value: height.toDouble(),
                    min:100.0,
                      max: 210.0,
                  activeColor:Color.fromRGBO(62, 216, 208,1) ,
                  inactiveColor: Colors.white,
                  onChanged:(double newValue) {
                    setState(() {
                      height = newValue.round();
                    });
                  }, ),
                ),

              ],
            ),),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: kActivecardcolor,
                cardChild:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(''
                        'WEIGHT',
                    style: kLabeltextstyle,),
                    Text(
                      weight.toString(),
                      style: kIntegersize,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Roundfloatingbutton(icon:FontAwesomeIcons.minus,
                          onPressed: (){
                            setState(() {
                              weight--;
                            });
                          },),
                        SizedBox(width: 10,),
                        Roundfloatingbutton(icon:FontAwesomeIcons.plus,
                          onPressed: (){
                            setState(() {
                              weight++;
                            });
                          },),
                      ],
                    )

                  ],
                ),),),
                Expanded(child: ReusableCard(colour: kActivecardcolor,
    cardChild:Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Text(''
    'AGE',
    style: kLabeltextstyle,),
    Text(
    age.toString(),
    style: kIntegersize,
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Roundfloatingbutton(icon:FontAwesomeIcons.minus,
    onPressed: (){
      setState(() {
        age--;
      });
    },),
    SizedBox(width: 10,),
    Roundfloatingbutton(icon:FontAwesomeIcons.plus,
      onPressed: (){
        setState(() {
          age++;
        });
      },),
    ],
    )

    ],
    ),),),

              ],
            ),
    ),
          Container(
            height: 60,
            width: double.infinity,

            margin: EdgeInsets.only(top: 10,left: 70,right: 5,bottom: 15),
             decoration: new BoxDecoration(
               color: Color.fromRGBO(62, 216, 208,1),
            borderRadius: BorderRadius.circular(15),
          )

          ),],
      )


    );
  }
}

class Roundfloatingbutton extends StatelessWidget {
  Roundfloatingbutton({this.icon,this.onPressed});
  final Function onPressed;
    final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      elevation:6.0 ,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 40,

      ),
      shape: CircleBorder(),
      fillColor: Colors.white,
    );
  }
}



