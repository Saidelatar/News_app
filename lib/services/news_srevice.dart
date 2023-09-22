import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class News {
  final Dio dio;
  const News(this.dio);

  Future<List<Articles>> getGenerlNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apikey=00643a0fd0224c539873f5610c1c82fa&country=us&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<Articles> articlesList = [];

      for (var article in articles) {
        Articles articleObject = Articles.fromjson(article);
        articlesList.add(articleObject);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
