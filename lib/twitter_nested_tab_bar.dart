import 'package:flutter/material.dart';

class TwitterNestedTabBare extends StatefulWidget {
  @override
  _TwitterNestedTabBareState createState() => _TwitterNestedTabBareState();
}

class _TwitterNestedTabBareState extends State<TwitterNestedTabBare>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollViewController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _scrollViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      controller: _scrollViewController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
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
        ];
      },
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          // CardPage(),
          Text('Tweets & replies'),
          Text('Tweets & replies'),
          Text('Media'),
          Text('Likes'),
        ],
      ),
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
