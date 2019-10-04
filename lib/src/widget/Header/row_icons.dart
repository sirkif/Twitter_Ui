import 'package:flutter/material.dart';
import 'package:twitter_ui/src/widget/Header/ink_button.dart';

import 'flat_button.dart';

class TwitterTopIcons extends StatefulWidget {
  @override
  _TwitterTopIconsState createState() => _TwitterTopIconsState();
}

class _TwitterTopIconsState extends State<TwitterTopIcons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 174, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          ButtonInk(
            icon: Icons.more_horiz,
          ),
          SizedBox(
            width: 10,
          ),
          ButtonInk(
            icon: Icons.mail_outline,
          ),
          SizedBox(
            width: 10,
          ),
          FlaatButton(),
          // SizedBox(
          //   width: 10,
          // ),
        ],
      ),
    );
  }
}

// AnimatedCrossFade(
//            duration:  Duration(seconds: 3),
//            firstChild: OutlineButtonn(),
//            secondChild: FlaatButton(),
//            crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
//          ),
