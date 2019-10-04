import 'package:flutter/material.dart';

class VerfiedLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Figma',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          margin: EdgeInsets.only(top: 4),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/verified.png')),
          ),
        ),
      ],
    );
  }
}
