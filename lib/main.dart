import 'package:flutter/material.dart';
import 'package:flutterroute/pages/home.dart';
import 'package:flutterroute/pages/login.dart';
import 'package:flutterroute/service/fluro.dart';
import 'package:flutterroute/service/route.dart';

//by flutter default routing

//void main() {
//  runApp(MaterialApp(
//    title: "Web like route",
//    initialRoute: HomePage.route,
//    onGenerateRoute: RouteConfiguration.onGenerateRoute,
//  ));
//}

//with fluro package
void main() {
  FluroRouter.setupRouter();
  runApp(
    MaterialApp (
      initialRoute: LoginView.route,
      onGenerateRoute: FluroRouter.router.generator,
    )
  );
}




