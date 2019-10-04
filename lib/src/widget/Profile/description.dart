import 'dart:math';

import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '@figmadesign',
          style: TextStyle(color: Colors.grey[700]),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'The collaborative interface design tool.',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: <Widget>[
            Transform.rotate(
              angle: pi / 4,
              child: Icon(
                Icons.attach_file,
                size: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              'figma.com',
              style: TextStyle(color: Colors.blue, fontSize: 14),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.date_range,
              size: 16,
              color: Colors.grey[600],
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              'Joined April 2015',
              style: TextStyle(color: Colors.grey[700], fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
