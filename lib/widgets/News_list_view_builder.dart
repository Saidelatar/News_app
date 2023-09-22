import 'package:dio/dio.dart';


import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import '../services/news_srevice.dart';
import 'News_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String c;
  const NewsListViewBuilder({
    super.key, required this.c
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var fut;
  @override
  void initState() {
    super.initState();
    fut = News(Dio()).getGenerlNews(category:widget.c );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articles>>(
        future: fut,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
                child: Text('opps there was an error , try again'));
          } else {
            return SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}

/*isLoading ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())) 
    :articles.isNotEmpty ? NewsListView(
      articles: articles, 
    )  : SliverToBoxAdapter(child:
     Text('opps there was an error , try again'))
    ;*/