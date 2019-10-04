import 'package:flutter/material.dart';
import '../model_tweets.dart';

class CardType1 extends StatelessWidget {
  final Tweets tweets;

  CardType1({this.tweets});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      // height: 50,
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
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          child: Column(
            children: <Widget>[
              FadeInImage(
                width: double.infinity,
                image: AssetImage(
                  '${tweets.networImage}',
                ),
                placeholder: AssetImage(
                  'images/loader.gif',
                ),
                height: 200,
                fit: BoxFit.cover,
                fadeInDuration: Duration(milliseconds: 900),
              ),
              Container(
                padding: EdgeInsets.all(10),
                // child: Text(
                //   tweets.description,
                //   textAlign: TextAlign.justify,
                // ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 2, top: 2),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            '${tweets.image}',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '${tweets.id}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              '${tweets.userName}',
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 14),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text('-'),
                            SizedBox(
                              width: 4,
                            ),
                            Text('${tweets.date}'),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Text(
                            '${tweets.description}',
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '${tweets.tage}',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            // crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.comment),
                              SizedBox(
                                width: 50,
                              ),
                              Icon(Icons.repeat),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '12',
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 16),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Icon(Icons.favorite_border),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '43',
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 16),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Icon(Icons.swap_vert),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
