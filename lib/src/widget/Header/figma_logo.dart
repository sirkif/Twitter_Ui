import 'package:flutter/material.dart';

class FigmaLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 110, left: 10),
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          // width: 4.0,
        ),
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage('images/figma.png'),
        radius: 45,
      ),
    );
  }
}
