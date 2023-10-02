import 'package:flutter/foundation.dart';
import 'package:news_cloud/model/article.dart';

class Aritcles {
  final List<dynamic> ArticlesList;

  Aritcles({required this.ArticlesList});

  factory Aritcles.fromJason(Map<String, dynamic> jasndata) {
    return Aritcles(ArticlesList: jasndata['results']);
  }
}
