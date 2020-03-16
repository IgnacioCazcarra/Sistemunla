import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sistemunla/floating_action_button.dart';

class Subject extends StatelessWidget{

  final int idSubject;
  final String subjectName;
  bool finalAprobado = false;
  bool cursadaAprobada = false;

  Subject({Key key, @required this.subjectName,this.idSubject});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Color getColorByState(){
      if(!this.cursadaAprobada && !this.finalAprobado){
        return Colors.white;
      }
      else if(this.cursadaAprobada && !this.finalAprobado){
        return Colors.orangeAccent;
      }
      else if(this.finalAprobado){
        return Colors.lightGreen;
      }

    }

    final name = Container(
      margin: EdgeInsets.only(left: 1.0,right: 1.0),
      child: Text(
        this.subjectName,
        textAlign: TextAlign.justify,
        style: TextStyle(
            fontFamily: "Raleway",
            fontWeight: FontWeight.w500,
            fontSize: 11.0,
            color: Color(0xFF06335c),
            decoration: TextDecoration.none,
            height: 1.5
        ),
      ),
    );

    final idSub = Container(
        margin: EdgeInsets.only(left: 1.0,right: 1.0),
        child: Text(
        "${this.idSubject}",
        textAlign: TextAlign.justify,
        style: TextStyle(
            fontFamily: "Raleway",
            fontWeight: FontWeight.w500,
            fontSize: 11.0,
            color: Color(0xFF06335c),
            decoration: TextDecoration.none,
            height: 1.5
        ),
      )
    );

    final subjectInfo = Container(
      height: 35.0,
      width: MediaQuery.of(context).size.width-20,
      margin: EdgeInsets.only(top: 10,bottom: 10),
      decoration: BoxDecoration(
        color: getColorByState(),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Row(
        children: <Widget>[
          idSub,
          name,
        ],
      )
      );

    return Stack(
      alignment: Alignment(1.0,0),
      children: <Widget>[
        subjectInfo,
        Container(
          height: 30.0,
          child: Fab(
              icon: Icons.assignment,
              onPressedFAB: (){
                if(!this.cursadaAprobada){
                  this.cursadaAprobada = true;
                }
                else if(this.cursadaAprobada && !this.finalAprobado){
                  this.finalAprobado = true;
                }
                else{
                  this.cursadaAprobada = false;
                  this.finalAprobado = false;
                }
              }
          ),
        )
      ],
    );
  }

}
