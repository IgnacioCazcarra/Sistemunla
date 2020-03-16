import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Subject extends StatelessWidget{

  final String subjectName;
  int state = 0;
  Subject({Key key, @required this.subjectName,this.state});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Color getColorByState(int state){
      switch(state) {
        case 1:
          return Colors.red;break;
        case 2:
          return Colors.orangeAccent;break;
        case 3:
          return Colors.lightGreenAccent;break;
        default: return Colors.white;
      }
    }
    final name = Container(
      height: 30.0,
      width: MediaQuery.of(context).size.width-20,
      margin: EdgeInsets.only(top: 10,bottom: 10),
      decoration: BoxDecoration(
        color: getColorByState(this.state),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Text(
        this.subjectName,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontFamily: "Raleway",
          fontWeight: FontWeight.w500,
          fontSize: 12.0,
          color: Color(0xFF06335c),
          decoration: TextDecoration.none,
          height: 2.0
        ),
      ),
    );

    return Container(
      child: name
    );
  }

}
