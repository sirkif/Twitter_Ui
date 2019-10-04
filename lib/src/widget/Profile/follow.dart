import 'package:flutter/material.dart';

class Follow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              '441',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              'Following',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              '60.4K',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Followers',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 2),
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'images/adam.jpg',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'Followed by Adam Kif',
              style: TextStyle(color: Colors.grey[700], fontSize: 12),
            ),
          ],
        )
      ],
    );
  }
}
