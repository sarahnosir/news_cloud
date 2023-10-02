import 'package:flutter/foundation.dart';

class Article {
  final String title;
  final String description;
  final String imageUrl;
  final String aritcleUrl;

  Article(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.aritcleUrl});
  factory Article.fromJason(Map<String, dynamic> jasndata) {
    return Article(
        title: jasndata['title'],
        description: jasndata['description'],
        imageUrl: jasndata['urlToImage'],
        aritcleUrl: jasndata['url']);
  }
}
