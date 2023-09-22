/*import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_srevice.dart';
import 'package:newsapp/widgets/News_tile.dart';

class NewsListView extends StatefulWidget {
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<Articles> articles = [];

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Getgeneralnews();
  }

  Future<void> Getgeneralnews() async {
    articles = await News(Dio()).getGenerlNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: NewsTile(
                ar: articles[index],
              ),
            );
          }));
  }
}
*/