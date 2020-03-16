import 'package:flutter/material.dart';
import 'package:sistemunla/home_page.dart';
import 'package:sistemunla/subject.dart';
import 'package:sistemunla/year_page.dart';

class PageSwipe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return PageView(
      scrollDirection: Axis.vertical,
      controller: PageController(
      initialPage: 0
      ),
      children: <Widget>[
        HomePage(title: "Hace swipe para ver las materias de la carrera"),
        YearPage(title: "1er año",invertedGrad: true, materia: Subject(subjectName: "Conceptos y Paradigmas de Lenguajes de Programación"),subjectsNum: 7),
        YearPage(title: "2ndo año",invertedGrad: false, materia: Subject(subjectName: "Programacion de computadoras"),subjectsNum: 8),
        YearPage(title: "3er año",invertedGrad: true, materia: Subject(subjectName: "Sistemas operativos"),subjectsNum: 8),
        YearPage(title: "4to año",invertedGrad: false, materia: Subject(subjectName: "Objetos I"),subjectsNum: 8,),
        YearPage(title: "5to año",invertedGrad: true, materia: Subject(subjectName: "Objectos II"),subjectsNum: 5,),
        YearPage(title: "Extracurriculares",invertedGrad: false, materia: Subject(subjectName: "Seminario e ingles"),subjectsNum: 5),
      ],
    );
  }

}