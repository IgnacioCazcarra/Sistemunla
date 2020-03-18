import 'package:flutter/material.dart';

class SubjectFab extends StatefulWidget{

  bool finalAprobado = false;
  bool cursadaAprobada = false;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SubjectFab();
  }

}

class _SubjectFab extends State<SubjectFab>{

  _SubjectFab();

  void onPressedButton() {
    if (!widget.cursadaAprobada) {
      widget.cursadaAprobada = true;
    }
    else if (widget.cursadaAprobada && !widget.finalAprobado) {
      widget.finalAprobado = true;
    }
    else {
      widget.cursadaAprobada = false;
      widget.finalAprobado = false;
    }
  }

  Color chooseColor(){
    if(!widget.cursadaAprobada && !widget.finalAprobado){
      return Colors.white;
    }
    else if(widget.cursadaAprobada && !widget.finalAprobado){
      return Colors.orangeAccent;
    }
    else if(widget.finalAprobado){
      return Colors.lightGreen;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment(1.0,0.0),
      height: 35.0,
      width: MediaQuery.of(context).size.width-20,
      margin: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 1),
      decoration: BoxDecoration(
        color: chooseColor(),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(2.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 15.0,
              offset: Offset(0.0,7.0)
          )
        ],
      ),
      child: FloatingActionButton(
        backgroundColor: Color(0xFF06335c),
        onPressed: onPressedButton,
        mini: true,
        child: Icon(Icons.check_box),
        heroTag: null,
      ),
    );
  }

}