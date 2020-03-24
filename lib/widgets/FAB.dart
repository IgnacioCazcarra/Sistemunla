import 'package:flutter/material.dart';

class Fab extends StatefulWidget{

  final IconData icon;
  final VoidCallback onPressedFAB;
  final Color color;
  Fab({Key key, @required this.icon, @required this.color, @required this.onPressedFAB});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Fab();
  }

}

class _Fab extends State<Fab>{

  _Fab();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF06335c),
      mini: true,
      child: Icon(widget.icon),
      onPressed: widget.onPressedFAB,
      heroTag: null,
    );
  }

}