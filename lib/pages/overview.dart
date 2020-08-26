import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutterroute/model/article.dart';
import 'package:flutterroute/pages/home.dart';

import 'article_list.dart';

class OverviewPage extends StatelessWidget {
  static const String route = '/overview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overview Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (Article article in articles)
              RaisedButton(
                onPressed: () {

                  Navigator.of(context).pushNamed(
                    ArticlePage.routeFromSlug(article.slug),
                  );
                },
                child: Text(article.title),
              ),
            RaisedButton(
              onPressed: () {
                // Navigate back to the home screen by popping the current route
                // off the stack.
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
