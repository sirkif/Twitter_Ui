import 'package:flutter/material.dart';

import 'Header/figma_logo.dart';
import 'Header/row_icons.dart';

class Header extends StatelessWidget {
  final double statusBarHeight;
  Header({this.statusBarHeight});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'images/twitter_header.jpeg',
          height: 142 + statusBarHeight,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        FigmaLogo(),
        TwitterTopIcons(),
      ],
    );
  }
}
