import 'package:flutter/material.dart';
import 'package:flutterroute/model/article.dart';

class ArticlePage extends StatelessWidget {
   ArticlePage({Key key, this.article}) : super(key: key);

  static const String baseRoute = '/article';

  static  String Function(String slug)  routeFromSlug = (String slug) { return baseRoute + '/$slug';};
   
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(article.title),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}