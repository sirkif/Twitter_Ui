import 'package:flutter/material.dart';

class OutlineButtonn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      color: Colors.white,
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 9),
        child: Text(
          'Follow',
          style: TextStyle(
            fontSize: 17,
            color: Color.fromRGBO(29, 161, 242, 0.9),
          ),
        ),
      ),
      borderSide: BorderSide(
        color: Color.fromRGBO(29, 161, 242, 1),
        width: 1,
      ),
      shape: StadiumBorder(),
    );
  }
}
