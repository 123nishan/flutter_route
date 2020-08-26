import 'package:flutter/material.dart';
import 'package:flutterroute/pages/article.dart';
import 'package:flutterroute/pages/article_list.dart';

const List<Article> articles = [
  Article(
    title: 'Flutter route',
    slug: 'flutter-route',
  ),
  Article(
    title: 'Flutter next big thing',
    slug: 'flutter-next-big-thing',
  ),
  Article(
    title: 'Why flutter?',
    slug: 'why-flutter',
  ),
];

class Article {
  const Article({this.title, this.slug});

  final String title;
  final String slug;

  static Widget getArticlePage(String slug) {
    for (Article article in articles) {
      if (article.slug == slug) {
        return ArticlePage(article: article);
      }
    }
    return UnknownArticle();
  }
}