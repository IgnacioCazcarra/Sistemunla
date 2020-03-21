import 'package:flutter/material.dart';
import 'package:sistemunla/RB_subject.dart';
import 'package:sistemunla/home_page.dart';
import 'package:sistemunla/year_page.dart';

class PageSwipe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    List<RBSubject> primerAnio = [
    RBSubject(subjectName: "Programacion de computadoras",idSubject: 1),
    RBSubject(subjectName: "Organizacion de computadoras",idSubject: 2),
    RBSubject(subjectName: "Arquitectura de computadoras",idSubject: 3),
    RBSubject(subjectName: "Matematica 1",idSubject: 4),
    RBSubject(subjectName: "Matematica 2",idSubject: 5),
    RBSubject(subjectName: "Expresion de problemas y algoritmos",idSubject: 6),
    RBSubject(subjectName: "Introduccion al pensamiento cientifico",idSubject: 7),
    ];

    List<RBSubject> segundoAnio = [
      RBSubject(subjectName: "Ingenieria de software 1",idSubject: 8),
      RBSubject(subjectName: "Introduccion a las bases de datos",idSubject: 9),
      RBSubject(subjectName: "Algoritmos y estructura de datos",idSubject: 10),
      RBSubject(subjectName: "Orientacion a Objetos 1",idSubject: 11),
      RBSubject(subjectName: "Seminario de lenguajes",idSubject: 12),
      RBSubject(subjectName: "Introduccion a los sistemas operativos",idSubject: 13),
      RBSubject(subjectName: "Matematica 3",idSubject: 14),
      RBSubject(subjectName: "Probabilidades y Estadistica",idSubject: 15),
    ];

    List<RBSubject> tercerAnio = [
    RBSubject(subjectName: "Programacion concurrente",idSubject: 16),
    RBSubject(subjectName: "Ingenieria de software 2",idSubject: 17),
    RBSubject(subjectName: "Orientacion a objetos 2",idSubject: 18),
    RBSubject(subjectName: "Sistemas y organizaciones",idSubject: 19),
    RBSubject(subjectName: "Bases de Datos 1",idSubject: 20),
    RBSubject(subjectName: "Proyecto de software",idSubject: 21),
    RBSubject(subjectName: "Conceptos y Paradigmas de Lenguajes de Programación",idSubject: 22),
    RBSubject(subjectName: "Redes y comunicaciones",idSubject: 23),
    ];

    List<RBSubject> cuartoAnio = [
    RBSubject(subjectName: "Ingenieria de software 3",idSubject: 24),
    RBSubject(subjectName: "Bases de datos 2",idSubject: 25),
    RBSubject(subjectName: "Fundamentos de Teoria de la Computacion",idSubject: 26),
    RBSubject(subjectName: "Sistemas Operativos",idSubject: 27),
    RBSubject(subjectName: "Desarrollo de software en Sistemas Distribuidos",idSubject: 28),
    RBSubject(subjectName: "Matematica Discreta",idSubject: 29),
    RBSubject(subjectName: "Optativa Area Arquitectura, Sistemas operativos y Redes",idSubject: 30),
    RBSubject(subjectName: "Optativa Area Algoritmos y lenguajes",idSubject: 31),
    ];

    List<RBSubject> quintoAnio = [
    RBSubject(subjectName: "Politica y gestion de la ciencia",idSubject: 32),
    RBSubject(subjectName: "Aspectos legales y Profesionales de la Informatica",idSubject: 33),
    RBSubject(subjectName: "Nuevos escenarios",idSubject: 34),
    RBSubject(subjectName: "Optativa Area Ingenieria de Software y Bases de datos",idSubject: 35,),
    RBSubject(subjectName: "Seminario de trabajo final",idSubject: 36),
    ];

    List<RBSubject> extracurriculares = [
      RBSubject(subjectName: "Ingles 1",idSubject: 0),
      RBSubject(subjectName: "Ingles 2",idSubject: 0),
      RBSubject(subjectName: "Ingles 3",idSubject: 0),
      RBSubject(subjectName: "Seminario de Pensamiento Nacional y Latinoamericano",idSubject: 0),
      RBSubject(subjectName: "Seminario de Justicia y Derechos Humanos",idSubject: 0),
    ];

    // TODO: implement build
    return PageView(
      scrollDirection: Axis.vertical,
      controller: PageController(
      initialPage: 0
      ),
      children: <Widget>[
        HomePage(title: "Hace swipe para ver las materias de la carrera"),
        YearPage(title: "1er año",invertedGrad: true, subjects: primerAnio,subjectsNum: 7),
        YearPage(title: "2ndo año",invertedGrad: false, subjects: segundoAnio ,subjectsNum: 8),
        YearPage(title: "3er año",invertedGrad: true, subjects: tercerAnio ,subjectsNum: 8),
        YearPage(title: "4to año",invertedGrad: false, subjects: cuartoAnio,subjectsNum: 8),
        YearPage(title: "5to año",invertedGrad: true, subjects: quintoAnio,subjectsNum: 5),
        YearPage(title: "Extracurriculares",invertedGrad: false, subjects: extracurriculares,subjectsNum: 5),
      ],
    );
  }

}