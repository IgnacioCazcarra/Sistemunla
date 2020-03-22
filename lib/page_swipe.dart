import 'package:flutter/material.dart';
import 'package:sistemunla/RB_subject.dart';
import 'package:sistemunla/home_page.dart';
import 'package:sistemunla/year_page.dart';

class PageSwipe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    List<RBSubject> primerAnio = [
    RBSubject(subjectName: "Programacion de computadoras",idSubject: 1,correlativas: "-"),
    RBSubject(subjectName: "Organizacion de computadoras",idSubject: 2,correlativas: "-"),
    RBSubject(subjectName: "Arquitectura de computadoras",idSubject: 3,correlativas: "2"),
    RBSubject(subjectName: "Matematica 1",idSubject: 4,correlativas: "-"),
    RBSubject(subjectName: "Matematica 2",idSubject: 5,correlativas: "4"),
    RBSubject(subjectName: "Expresion de problemas y algoritmos",idSubject: 6,correlativas: "-"),
    RBSubject(subjectName: "Introduccion al pensamiento cientifico",idSubject: 7,correlativas: "-"),
    ];

    List<RBSubject> segundoAnio = [
      RBSubject(subjectName: "Ingenieria de software 1",idSubject: 8,correlativas: "1"),
      RBSubject(subjectName: "Introduccion a las bases de datos",idSubject: 9,correlativas: "1"),
      RBSubject(subjectName: "Algoritmos y estructura de datos",idSubject: 10,correlativas: "1-5-6"),
      RBSubject(subjectName: "Orientacion a Objetos 1",idSubject: 11,correlativas: "1"),
      RBSubject(subjectName: "Seminario de lenguajes",idSubject: 12,correlativas: "1"),
      RBSubject(subjectName: "Introduccion a los sistemas operativos",idSubject: 13,correlativas: "1-3"),
      RBSubject(subjectName: "Matematica 3",idSubject: 14,correlativas: "5"),
      RBSubject(subjectName: "Probabilidades y Estadistica",idSubject: 15,correlativas: "14"),
    ];

    List<RBSubject> tercerAnio = [
    RBSubject(subjectName: "Programacion concurrente",idSubject: 16,correlativas: "12-13"),
    RBSubject(subjectName: "Ingenieria de software 2",idSubject: 17,correlativas: "8"),
    RBSubject(subjectName: "Orientacion a objetos 2",idSubject: 18,correlativas: "11"),
    RBSubject(subjectName: "Sistemas y organizaciones",idSubject: 19,correlativas: "8-9"),
    RBSubject(subjectName: "Bases de Datos 1",idSubject: 20,correlativas: "9"),
    RBSubject(subjectName: "Proyecto de software",idSubject: 21,correlativas: "8-9-10-12"),
    RBSubject(subjectName: "Conceptos y Paradigmas de Lenguajes de Programación",idSubject: 22,correlativas: "10-12"),
    RBSubject(subjectName: "Redes y comunicaciones",idSubject: 23,correlativas: "5-13"),
    ];

    List<RBSubject> cuartoAnio = [
    RBSubject(subjectName: "Ingenieria de software 3",idSubject: 24,correlativas: "14-17-19"),
    RBSubject(subjectName: "Bases de datos 2",idSubject: 25,correlativas: "20"),
    RBSubject(subjectName: "Fundamentos de Teoria de la Computacion",idSubject: 26,correlativas: "14-22"),
    RBSubject(subjectName: "Sistemas Operativos",idSubject: 27,correlativas: "23"),
    RBSubject(subjectName: "Desarrollo de software en Sistemas Distribuidos",idSubject: 28,correlativas: "16-20-23"),
    RBSubject(subjectName: "Matematica Discreta",idSubject: 29,correlativas: "15"),
    RBSubject(subjectName: "Optativa Area Arquitectura, Sistemas operativos y Redes",idSubject: 30,correlativas: "23"),
    RBSubject(subjectName: "Optativa Area Algoritmos y lenguajes",idSubject: 31,correlativas: "22"),
    ];

    List<RBSubject> quintoAnio = [
    RBSubject(subjectName: "Politica y gestion de la ciencia",idSubject: 32,correlativas: "Necesitas estar cursando el tramo final"),
    RBSubject(subjectName: "Aspectos legales y Profesionales de la Informatica",idSubject: 33,correlativas: "21"),
    RBSubject(subjectName: "Nuevos escenarios",idSubject: 34,correlativas: "Necesitas estar cursando el tramo final"),
    RBSubject(subjectName: "Optativa Area Ingenieria de Software y Bases de datos",idSubject: 35,correlativas: "24"),
    RBSubject(subjectName: "Seminario de trabajo final",idSubject: 36,correlativas: "16-17-18-19-20-21-22-23"),
    ];

    List<RBSubject> extracurriculares = [
      RBSubject(subjectName: "Ingles 1",idSubject: 0,correlativas: "-"),
      RBSubject(subjectName: "Ingles 2",idSubject: 0,correlativas: "-"),
      RBSubject(subjectName: "Ingles 3",idSubject: 0,correlativas: "-"),
      RBSubject(subjectName: "Seminario de Pensamiento Nacional y Latinoamericano",idSubject: 0,correlativas: "-"),
      RBSubject(subjectName: "Seminario de Justicia y Derechos Humanos",idSubject: 0,correlativas: "-"),
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