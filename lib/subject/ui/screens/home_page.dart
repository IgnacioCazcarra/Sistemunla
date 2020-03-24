import 'package:flutter/material.dart';
import 'package:sistemunla/widgets/gradient.dart';

class HomePage extends StatelessWidget {

  final String title;

  HomePage({Key key, this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final menuInfo = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(50),
      child: Text(
        this.title,
        style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: "Raleway",
          decoration: TextDecoration.none,
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        GradientBack(inverted: false),
        menuInfo,
      ],
    );
  }


}
