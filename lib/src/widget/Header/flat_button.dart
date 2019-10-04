import 'package:flutter/material.dart';

import 'ink_button.dart';

class FlaatButton extends StatefulWidget {
  // Function visibleButton;
  // FlaatButton({this.visibleButton});
  @override
  _FlaatButtonState createState() => _FlaatButtonState();
}

class _FlaatButtonState extends State<FlaatButton> {
  bool switchButton = true;
  bool visibleButton = false;

  void showButton() {
    setState(() {
      visibleButton = !visibleButton;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Visibility(
          visible: visibleButton,
          child: Row(
            children: <Widget>[
              ButtonInk(
                icon: Icons.notifications_none,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 34,
          child: FlatButton(
            color: switchButton ? Colors.white : Color(0xff1da1f2),
            onPressed: () {
              setState(() {
                switchButton = !switchButton;
                showButton();
              });
            },
            child: Text(
              switchButton ? 'Follow' : 'Following',
              style: TextStyle(
                fontSize: 16,
                color: switchButton
                    ? Color.fromRGBO(29, 161, 242, 0.9)
                    : Colors.white,
              ),
            ),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: switchButton
                      ? Color.fromRGBO(29, 161, 242, 0.9)
                      : Color(0xff1da1f2),
                  width: 1,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    );
  }
}
