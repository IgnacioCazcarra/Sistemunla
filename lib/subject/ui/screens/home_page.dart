import 'package:flutter/material.dart';
import 'package:sistemunla/widgets/gradient.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final title = Container(
      margin: EdgeInsets.only(top: 20),
      alignment: Alignment.topCenter,
      child: Text(
        "Instrucciones",
        style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: "Raleway",
          decoration: TextDecoration.none,
        ),
      ),
    );

    final introduction = Container(
      margin: EdgeInsets.only(top: 20, left: 15, right: 15),
      alignment: Alignment.topLeft,
      child: Text(
        "Sistemunla es una aplicación que sirve para trackear tu progreso dentro de la carrera.\n",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: Color(0xFF06335c),
          fontFamily: "Raleway",
          decoration: TextDecoration.none,
        ),
      ),
    );

    final explanation = Container(
      margin: EdgeInsets.only(top: 20, left: 15, right: 15),
      alignment: Alignment.topLeft,
      child: Text(
        "Hay tres estados para cada materia.",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: Color(0xFF06335c),
          fontFamily: "Raleway",
          decoration: TextDecoration.none,
        ),
      ),
    );

    final buttonExp = Container(
      margin: EdgeInsets.only(top: 20, left: 15, right: 15),
      alignment: Alignment.topCenter,
      child: Text(
        "Blanco: Sirve para indicar las materias que todavia no cursaste.\n\nNaranja: Sirve para indicar las materias en las que aprobaste la cursada pero debes el final.\n\nVerde: Sirve para indicar las materias que aprobaste por completo (cursada y final).\n\nSi deseas ver cuales son las correlativas de la materia, solo necesitas mantener el boton apretado.",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: Color(0xFF06335c),
          fontFamily: "Raleway",
          decoration: TextDecoration.none,
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        GradientBack(inverted: false),
        Container(
          margin: EdgeInsets.only(top: 60,bottom: 15,left: 10, right: 10),
          width: MediaQuery.of(context).size.width-10,
          height: 644,
          decoration: BoxDecoration(
            color: Colors.white70,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        Column(
          children: <Widget>[
            title,
            introduction,
            explanation,
            buttonExp,
          ],
        )
      ],
    );
  }


}
