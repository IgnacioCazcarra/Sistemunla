import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentBar extends StatefulWidget{

  int cantidadMaterias = 0;
  int cantidadAprobadas = 0;
  PercentBar(this.cantidadMaterias,this.cantidadAprobadas);

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
        percent: 0.5,
        progressColor: Colors.green,
        animation: true,
        radius: 40.0,
        lineWidth: 5.0,
        animateFromLastPercent: true,
        center: Text(
          "${0.5*100}%",
          style: TextStyle(
              fontSize: 10.0
          ),
        ),
      ),
    );
  }

}