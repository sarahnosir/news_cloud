import 'package:news_cloud/model/article.dart';
import 'package:news_cloud/services.dart/news_serv.dart';

class ArticlesListViewModel {
  List<Article> _articleList = [];
  List<Article> _articleListByCate = [];

  fetcharticle() async {
    _articleList = await NewsApi.fetchResults();
  }

  fetcharticlebyCat(String cate) async {
    _articleListByCate = await NewsApi.fetchResultscat(cate);
  }

  List<Article> get articleList => _articleList;
  List<Article> get articleListByCate => _articleListByCate;
}
