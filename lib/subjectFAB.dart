import 'package:flutter/material.dart';

class SubjectFab extends StatefulWidget{

  Color color = Colors.white;
  bool cursadaAprobada = false;
  bool finalAprobado = false;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _SubjectFab();
  }
}

class _SubjectFab extends State<SubjectFab>{

  _SubjectFab();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment(1.0,0.0),
      height: 35.0,
      width: MediaQuery.of(context).size.width-20,
      margin: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 1),
      decoration: BoxDecoration(
        color: widget.color,
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
        onPressed: (){
          setState(() {

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

            if(!widget.cursadaAprobada && !widget.finalAprobado){
              widget.color = Colors.white;
            }
            else if(widget.cursadaAprobada && !widget.finalAprobado){
              widget.color =  Colors.orangeAccent;
            }
            else if(widget.finalAprobado){
              widget.color = Colors.lightGreen;
            }
          });
        },
        mini: true,
        child: Icon(Icons.check_box),
        heroTag: null,
      ),
    );
  }

}