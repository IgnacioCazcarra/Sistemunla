import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sistemunla/subjectFAB.dart';

class Subject extends StatelessWidget{

  final int idSubject;
  final String subjectName;
  final SubjectFab fab;

  Subject({Key key, @required this.subjectName, this.idSubject, @required this.fab});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final name = Container(
      margin: EdgeInsets.only(left: 2.0,right: 1.0),
      child: Text(
        this.subjectName,
        textAlign: TextAlign.justify,
        style: TextStyle(
            fontFamily: "Raleway",
            fontWeight: FontWeight.w500,
            fontSize: 11.0,
            color: Color(0xFF06335c),
            decoration: TextDecoration.none,
            height: 3.6
        ),
      ),
    );

    final idSub = Container(
        margin: EdgeInsets.only(left: 11.0,right: 1.0),
        child: Text(
        "${this.idSubject}",
        textAlign: TextAlign.justify,
        style: TextStyle(
            fontFamily: "Raleway",
            fontWeight: FontWeight.w500,
            fontSize: 11.0,
            color: Color(0xFF06335c),
            decoration: TextDecoration.none,
            height: 3.6
        ),
      )
    );


    return Stack(
      children: <Widget>[
        fab,
        Row(
          children: <Widget>[
            idSub,
            name,
          ],
        )
      ],
    );
  }

}
