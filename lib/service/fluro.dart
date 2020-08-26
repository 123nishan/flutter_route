import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterroute/pages/home.dart';
import 'package:flutterroute/pages/login.dart';
class FluroRouter {
  static Router router=Router();
  static Handler _loginHandler=Handler (
    handlerFunc: (BuildContext context,Map<String,dynamic> params)=>LoginView());

  static Handler _homeHandler=Handler (
      handlerFunc: (BuildContext context,Map<String,dynamic> params)=>HomePage(params['userId'][0]));

  static void setupRouter() {
        router.define("/login", handler: _loginHandler);
        router.define("/home/:userId", handler: _homeHandler,transitionType: TransitionType.cupertino);

  }
}
