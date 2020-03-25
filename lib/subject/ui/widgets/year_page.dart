import 'package:flutter/material.dart';
import 'package:sistemunla/subject/ui/widgets/RB_subject.dart';
import 'package:sistemunla/widgets/gradient.dart';


class YearPage extends StatelessWidget{

  final String title;
  final List<RBSubject> subjects;
  final bool invertedGrad;
  final int subjectsNum;
  int count = 0;
  YearPage({Key key, this.title,this.subjects,this.invertedGrad,this.subjectsNum});


  int countSubjectsAprobadas(int contador){
    int contador = 0;
    for(var i = 0; i<this.subjects.length;i++){
      if(this.subjects[i].finalAprobado){
        contador++;
      }
    }
    return contador;
  }

  void checkCorrelativas(){
    int contador = 0;
    for(var i = 0; i<this.subjects.length;i++){
      if(this.subjects[i].mostrarCorrelativas){
        contador++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    print(this.countSubjectsAprobadas(this.count));
    // TODO: implement build
    final title = Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(top: 40,left: 10),
      child: Text(
        this.title,
        style: TextStyle(
          color: Color(0xFF06335c),
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          fontFamily: "Raleway",
          decoration: TextDecoration.none,
        ),
      ),
    );

    return Stack(
        children: <Widget>[
          GradientBack(inverted: this.invertedGrad),
          Container(
            margin: EdgeInsets.only(top: 45,bottom: 15,left: 6,right: 6),
            width: MediaQuery.of(context).size.width-10,
            height: 644,
            decoration: BoxDecoration(
              color: Colors.white70,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      title,
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width-20,
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: subjects
                    ),
                  )
                )
                //for(var i = 0; i<this.subjectsNum;i+=1) subjects[i]
              ],
            ),
          )
        ],
      );
  }

}