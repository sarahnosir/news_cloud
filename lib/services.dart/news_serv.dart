import 'package:news_cloud/model/article.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_cloud/model/list.dart';
import '../model/article.dart';

class NewsApi {
  final String apiKey = 'f40946b2dbaa4bbea7ff314631b93b58';
  Future<List<Article>> fetchResults() async {
    try {
      final http.Response response = await http.get(Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey'));
      if (response.statusCode == 200) {
        String data = response.body;
        var jasndata = jsonDecode(data);
        Aritcles aritcles = Aritcles.fromJason(jasndata);
        List<Article> articleslist =
            aritcles.ArticlesList.map((e) => Article.fromJason(e)).toList();
        return articleslist;
      } else {
        throw Exception("Error Code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
