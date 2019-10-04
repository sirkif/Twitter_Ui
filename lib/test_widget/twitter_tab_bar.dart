import 'package:flutter/material.dart';

class TwitterTabBare extends StatefulWidget {
  @override
  _TwitterTabBareState createState() => _TwitterTabBareState();
}

class _TwitterTabBareState extends State<TwitterTabBare>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return
        // DefaultTabController(
        //   length: 4,
        Column(
      children: <Widget>[
        TabBar(
          controller: _tabController,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey[700],
          tabs: <Widget>[
            Tab(
              text: 'Tweets',
            ),
            Tab(
              text: 'Replies',
            ),
            Tab(
              text: 'Media',
            ),
            Tab(
              text: 'Tweets',
            ),
          ],
        ),
        Container(
          constraints: BoxConstraints.expand(height: 1000),
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              // CardPage(),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                  Text('Tweets & replies'),
                ],
              ),
              Text('Tweets & replies'),
              Text('Media'),
              Text('Likes'),
            ],
          ),
        ),
      ],
    );
  }
}
// TabBarView(
//       controller: length,
//       children: <Widget>[
//         Text('Tweets'),
//         Text('Tweets & replies'),
//         Text('Media'),
//         Text('Likes'),
//       ],
//     );
