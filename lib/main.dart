import 'package:flutter/material.dart';
import 'package:twitter_ui/src/model/card_page/card_type_1.dart';
import 'package:twitter_ui/src/model/model_tweets.dart';

import 'package:twitter_ui/src/widget/header.dart';
import 'package:twitter_ui/src/widget/Profile/description.dart';
import 'package:twitter_ui/src/widget/Profile/follow.dart';
import 'package:twitter_ui/src/widget/Profile/verified_logo.dart';

import 'src/model/model_tweets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                floating: true,
                pinned: true,
                backgroundColor: Colors.white,
                expandedHeight: MediaQuery.of(context).size.height * 0.65,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Column(
                    children: <Widget>[
                      Header(
                        statusBarHeight: statusBarHeight,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            VerfiedLogo(),
                            SizedBox(
                              height: 4,
                            ),
                            Description(),
                            SizedBox(
                              height: 10,
                            ),
                            Follow(),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                bottom: TabBar(
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
              ),
            ];
          },
          body: Container(
            child: CustomScrollView(
              // scrollDirection: Axis.vertical,
              slivers: <Widget>[
                SliverPadding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 6),
                  sliver: SliverFixedExtentList(
                    itemExtent: MediaQuery.of(context).size.height * 0.6,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return TabBarView(
                          controller: _tabController,
                          children: <Widget>[
                            CardType1(
                              tweets: tweets[index],
                            ),
                            CardType1(tweets: tweets[index]),
                            CardType1(tweets: tweets[index]),
                            CardType1(tweets: tweets[index]),
                          ],
                        );
                      },
                      childCount: tweets.length,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
