import 'package:flutter/material.dart';
import 'package:sistemunla/home_page.dart';
import 'package:sistemunla/subject.dart';
import 'package:sistemunla/year_page.dart';

class PageSwipe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    List<Subject> primerAnio = [
    Subject(subjectName: "Programacion de computadoras",idSubject: 1),
    Subject(subjectName: "Organizacion de computadoras",idSubject: 2),
    Subject(subjectName: "Arquitectura de computadoras",idSubject: 3),
    Subject(subjectName: "Matematica 1",idSubject: 4),
    Subject(subjectName: "Matematica 2",idSubject: 5),
    Subject(subjectName: "Expresion de problemas y algoritmos",idSubject: 6),
    Subject(subjectName: "Introduccion al pensamiento cientifico",idSubject: 7),
    ];

    List<Subject> segundoAnio = [
    Subject(subjectName: "Ingenieria de software 1",idSubject: 8),
    Subject(subjectName: "Introduccion a las bases de datos",idSubject: 9),
    Subject(subjectName: "Algoritmos y estructura de datos",idSubject: 10),
    Subject(subjectName: "Orientacion a Objetos 1",idSubject: 11),
    Subject(subjectName: "Seminario de lenguajes",idSubject: 12),
    Subject(subjectName: "Introduccion a los sistemas operativos",idSubject: 13),
    Subject(subjectName: "Matematica 3",idSubject: 14),
    Subject(subjectName: "Probabilidades y Estadistica",idSubject: 15),
    ];

    List<Subject> tercerAnio = [
    Subject(subjectName: "Programacion concurrente",idSubject: 16),
    Subject(subjectName: "Ingenieria de software 2",idSubject: 17),
    Subject(subjectName: "Orientacion a objetos 2",idSubject: 18),
    Subject(subjectName: "Sistemas y organizaciones",idSubject: 19),
    Subject(subjectName: "Bases de Datos 1",idSubject: 20),
    Subject(subjectName: "Proyecto de software",idSubject: 21),
    Subject(subjectName: "Conceptos y Paradigmas de Lenguajes de Programación",idSubject: 22),
    Subject(subjectName: "Redes y comunicaciones",idSubject: 23),
    ];

    List<Subject> cuartoAnio = [
    Subject(subjectName: "Ingenieria de software 3",idSubject: 24),
    Subject(subjectName: "Bases de datos 2",idSubject: 25),
    Subject(subjectName: "Fundamentos de Teoria de la Computacion",idSubject: 26),
    Subject(subjectName: "Sistemas Operativos",idSubject: 27),
    Subject(subjectName: "Desarrollo de software en Sistemas Distribuidos",idSubject: 28),
    Subject(subjectName: "Matematica Discreta",idSubject: 29),
    Subject(subjectName: "Optativa Area Arquitectura, Sistemas operativos y Redes",idSubject: 30),
    Subject(subjectName: "Optativa Area Algoritmos y lenguajes",idSubject: 31),
    ];

    List<Subject> quintoAnio = [
    Subject(subjectName: "Politica y gestion de la ciencia",idSubject: 32),
    Subject(subjectName: "Aspectos legales y Profesionales de la Informatica",idSubject: 33),
    Subject(subjectName: "Nuevos escenarios",idSubject: 34),
    Subject(subjectName: "Optativa Area Ingenieria de Software y Bases de datos",idSubject: 35),
    Subject(subjectName: "Seminario de trabajo final",idSubject: 36),
    ];

    List<Subject> extracurriculares = [
      Subject(subjectName: "Ingles 1",idSubject: 0),
      Subject(subjectName: "Ingles 2",idSubject: 0),
      Subject(subjectName: "Ingles 3",idSubject: 0),
      Subject(subjectName: "Seminario de Pensamiento Nacional y Latinoamericano",idSubject: 0),
      Subject(subjectName: "Seminario de Justicia y Derechos Humanos",idSubject: 0),
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