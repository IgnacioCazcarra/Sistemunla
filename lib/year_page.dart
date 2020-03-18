import 'package:flutter/material.dart';
import 'package:sistemunla/gradient.dart';
import 'package:sistemunla/percentBar.dart';
import 'package:sistemunla/subject.dart';

class YearPage extends StatelessWidget{

  final String title;
  final List<Subject> subjects;
  final bool invertedGrad;
  final int subjectsNum;

  YearPage({Key key, this.title,this.subjects,this.invertedGrad,this.subjectsNum});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final title = Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(top: 50,left: 10),
      child: Text(
        this.title,
        style: TextStyle(
          color: Color(0xFF06335c),
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          fontFamily: "Raleway",
          decoration: TextDecoration.none,
        ),
      ),
    );

    return Stack(
        children: <Widget>[
          GradientBack(inverted: this.invertedGrad),
          Container(
            margin: EdgeInsets.only(top: 45,bottom: 10,left: 4),
            width: MediaQuery.of(context).size.width-10,
            height: 70.0*this.subjectsNum,
            decoration: BoxDecoration(
              color: Colors.white70,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      title,
                      PercentBar(percent: 0.7),
                    ],
                  ),
                ),
                for(var i = 0; i<this.subjectsNum;i+=1) subjects[i]
              ],
            ),
          )
        ],
      );
  }

}