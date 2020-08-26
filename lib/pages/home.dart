import 'package:flutter/material.dart';
import 'package:flutterroute/pages/overview.dart';

class HomePage extends StatelessWidget {
  static const String route = '/';
  final String data;
  HomePage(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("$data"),
          onPressed: () {
            // Navigate to the overview page using a named route.
            Navigator.pushNamed(context, OverviewPage.route);
          },
        ),
      ),
    );
  }
}