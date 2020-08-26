import 'package:flutter/material.dart';
class LoginView extends StatelessWidget {
  static const String route = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      floatingActionButton: FloatingActionButton(
        onPressed: () {    Navigator.pushNamed(context, '/home/nishan');    },
      ),
      body: Center(
          child: Text(
            this.runtimeType.toString(),
            style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
          )),
    );
  }
}