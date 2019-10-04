import 'package:flutter/material.dart';

import '../model_tweets.dart';

class CardPage extends StatelessWidget {
  final Tweets tweets;

  CardPage({this.tweets});
  @override
  Widget build(BuildContext context) {
    return _cardType1(
      tweets,
    );
  }

  Widget _cardType1(Tweets tweets) {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(tweets.networImage),
            placeholder: AssetImage('images/loader.gif'),
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 200),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(tweets.description),
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          // color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(2, 10),
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: card,
      ),
    );
  }
}
