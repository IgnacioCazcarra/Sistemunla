import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RBSubject extends StatefulWidget{

  final int idSubject;
  final String subjectName;
  Color color = Colors.white;
  bool cursadaAprobada = false;
  bool finalAprobado = false;
  bool mostrarCorrelativas = false;
  final String correlativas;

  RBSubject({Key key, @required this.subjectName, @required this.idSubject, this.correlativas});

  @override
  createState() => _RBSubject();
}

class _RBSubject extends State<RBSubject>{

  _read() async {
    final prefs = await SharedPreferences.getInstance();
    final mostrarCorrelativas1 = prefs.getBool('mostrarCorrelativas') ?? 0;
    print('read: $mostrarCorrelativas1');
  }

  _save() async {
    final prefs = await SharedPreferences.getInstance();
    if(prefs.getBool('mostrarCorrelativas')){
      prefs.setBool('mostrarCorrelativas', false);
    }
    else prefs.setBool('mostrarCorrelativas', true);

  }

  @override
  Widget build(BuildContext context) {

    final name = Container(
      margin: EdgeInsets.only(left: 5.0,right: 1.0),
      alignment: Alignment.centerLeft,
      child: Text(
        widget.subjectName,
        textAlign: TextAlign.justify,
        style: TextStyle(
            fontFamily: "Raleway",
            fontWeight: FontWeight.w500,
            fontSize: 11.0,
            color: Color(0xFF06335c),
            decoration: TextDecoration.none,
            height: 2.5
        ),
      ),
    );

    final idSub = Container(
      margin: EdgeInsets.only(right: 1.0),
      alignment: Alignment.centerLeft,
      child: Text(
        "${widget.idSubject}",
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontFamily: "Raleway",
          fontWeight: FontWeight.w500,
          fontSize: 11.0,
          color: Color(0xFF06335c),
          decoration: TextDecoration.none,
          height: 2.5
        ),
      )
    );

    return Container(
      height: widget.mostrarCorrelativas?50:35,
      width: MediaQuery.of(context).size.width-20,
      margin: EdgeInsets.only(top: 1,bottom: 22,left: 5,right: 5),
      child: RaisedButton(
        child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      idSub,
                      name,
                    ],
                  ),
                  widget.mostrarCorrelativas?
                    Container(
                      margin: EdgeInsets.only(top: 3.0,left: widget.idSubject>=10?19:13),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "ID Correlativas: "+widget.correlativas,
                        style: TextStyle(
                          color: Color(0xFF908e8e),
                          fontSize: 10.0
                        ),
                      ),
                    ):SizedBox()
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
        onLongPress: (){
          setState(() {
            if(widget.mostrarCorrelativas){
              widget.mostrarCorrelativas = false;
            }
            else widget.mostrarCorrelativas = true;


          });
        },
      ),
    );
  }

}