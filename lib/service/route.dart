import 'package:flutter/material.dart';
import 'package:flutterroute/model/article.dart';
import 'package:flutterroute/model/path.dart';
import 'package:flutterroute/pages/article_list.dart';
import 'package:flutterroute/pages/home.dart';
import 'package:flutterroute/pages/overview.dart';

class RouteConfiguration {
  /// List of [Path] to for route matching. When a named route is pushed with
  /// [Navigator.pushNamed], the route name is matched with the [Path.pattern]
  /// in the list below. As soon as there is a match, the associated builder
  /// will be returned. This means that the paths higher up in the list will
  /// take priority.
  static List<Path> paths = [
    Path(
      r'^' + ArticlePage.baseRoute + r'/([\w-]+)$',
          (context, match) => Article.getArticlePage(match),
    ),
    Path(
      r'^' + OverviewPage.route,
          (context, match) => OverviewPage(),
    ),
//    Path(
//      r'^' + HomePage.route,
//          (context, match) => HomePage(),
//    ),
  ];

  /// The route generator callback used when the app is navigated to a named
  /// route. Set it on the [MaterialApp.onGenerateRoute] or
  /// [WidgetsApp.onGenerateRoute] to make use of the [paths] for route
  /// matching.
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    for (Path path in paths) {
      final regExpPattern = RegExp(path.pattern);
      if (regExpPattern.hasMatch(settings.name)) {
        final firstMatch = regExpPattern.firstMatch(settings.name);
        final match = (firstMatch.groupCount == 1) ? firstMatch.group(1) : null;
        return MaterialPageRoute<void>(
          builder: (context) => path.builder(context, match),
          settings: settings,
        );
      }
    }

    // If no match was found, we let [WidgetsApp.onUnknownRoute] handle it.
    return null;
  }
}