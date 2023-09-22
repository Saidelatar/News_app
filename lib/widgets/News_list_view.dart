import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/views/web_view_screen.dart';
import 'package:newsapp/widgets/News_tile.dart';

// ignore: must_be_immutable
class NewsListView extends StatelessWidget {
  List<Articles> articles = [];
  NewsListView({required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: InkWell(
            onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => WebViewScreen(url: articles[index].url ?? ''),
                ));
              },
          child: NewsTile(
            ar: articles[index],
          ),
        ),
      );
    }));
  }
}
