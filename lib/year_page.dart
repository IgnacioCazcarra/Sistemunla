import 'package:flutter/material.dart';
import 'package:sistemunla/gradient.dart';
import 'package:sistemunla/subject.dart';

class YearPage extends StatelessWidget{

  final String title;
  final Subject materia;
  final bool invertedGrad;
  final int subjectsNum;
  var subjects = List();

  YearPage({Key key, this.title,this.materia,this.invertedGrad,this.subjectsNum});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final title = Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(top: 50),
      child: Text(
        this.title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
          fontFamily: "Raleway",
          decoration: TextDecoration.none,
        ),
      ),
    );

    return Container(
      child: Stack(
        children: <Widget>[
          GradientBack(inverted: this.invertedGrad),
          Container(
            child: Column(
              children: <Widget>[
                title,
                Container(
                  child: Column(
                    children: <Widget>[
                      for(var i = 0; i<this.subjectsNum;i+=1) materia
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }

}