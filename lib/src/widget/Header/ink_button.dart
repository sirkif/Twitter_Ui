import 'package:flutter/material.dart';

class ButtonInk extends StatelessWidget {
  final IconData icon;
  ButtonInk({this.icon});
  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(29, 161, 242, 1),
          width: 1,
        ),
        // color: Colors.yellow,
        shape: BoxShape.circle,
      ),
      child: InkWell(
        onTap: () => _clickMe(context),
        child: Padding(
          padding: EdgeInsets.all(6.0),
          child: Icon(
            icon,
            size: 20,
            color: Color.fromRGBO(29, 161, 242, 0.7),
          ),
        ),
      ),
    );
  }

  void _clickMe(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.repeat),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Turn off Retweets',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.list),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Add/remove from Lists',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.menu),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'View Lists',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.flash_on),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'View Moments',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.attach_file),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Copy link to profile',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.volume_off),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Mute @figmadesign',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.block),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Block @figmadesign',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
