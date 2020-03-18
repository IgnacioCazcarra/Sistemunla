import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentBar extends StatefulWidget{

  double percent;

  PercentBar({Key key, @required this.percent});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PercentBar();
  }

}

class _PercentBar extends State<PercentBar>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 40.0,left: 5.0),
      child: CircularPercentIndicator(
        percent: widget.percent,
        progressColor: Colors.green,
        animation: true,
        radius: 40.0,
        lineWidth: 5.0,
        center: Text(
          "${widget.percent*100}%",
          style: TextStyle(
            fontSize: 11.0
          ),
        ),
      ),
    );
  }

}