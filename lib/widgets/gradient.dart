import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{

  Color startingColor = Color(0xFF642B73);
  Color endingColor = Color(0xFFC6426E);
  bool inverted = false;

  GradientBack({Key key, this.inverted});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [inverted? this.endingColor:this.startingColor,inverted?this.startingColor:this.endingColor],
          tileMode: TileMode.clamp,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        )
      ),
    );
  }


}