import 'package:flutter/material.dart';

class RBSubject extends StatefulWidget{

  final int idSubject;
  final String subjectName;
  Color color = Colors.white;
  bool cursadaAprobada = false;
  bool finalAprobado = false;

  RBSubject({Key key, @required this.subjectName, @required this.idSubject});

  @override
  createState() => _RBSubject();
}

class _RBSubject extends State<RBSubject>{


  @override
  Widget build(BuildContext context) {

    final name = Container(
      margin: EdgeInsets.only(left: 2.0,right: 1.0),
      child: Text(
        widget.subjectName,
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
      margin: EdgeInsets.only(right: 1.0),
      child: Text(
        "${widget.idSubject}",
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

    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width-20,
      margin: EdgeInsets.only(top: 10,bottom: 8,left: 1,right: 3),
      child: RaisedButton(
        child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  idSub,
                  name,
                ],
              ),
            ]
        ),
        color: widget.color,
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

      ),
    );
  }

}