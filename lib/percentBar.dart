import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentBar extends StatefulWidget{

  int cantidadMaterias;
  int cantidadAprobadas;
  PercentBar(this.cantidadMaterias,this.cantidadAprobadas);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PercentBar();
  }

  double calcularPorcentajePorMateria(){
    return 100/this.cantidadMaterias;
  }
}

class _PercentBar extends State<PercentBar>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 40.0,left: 5.0),
      child: CircularPercentIndicator(
        percent: widget.calcularPorcentajePorMateria()*widget.cantidadAprobadas/100,
        progressColor: Colors.green,
        animation: true,
        radius: 40.0,
        lineWidth: 5.0,
        center: Text(
          "${widget.calcularPorcentajePorMateria()*widget.cantidadAprobadas}%",
          style: TextStyle(
            fontSize: 10.0
          ),
        ),
      ),
    );
  }

}