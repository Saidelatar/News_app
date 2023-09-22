import 'package:flutter/material.dart';
import 'package:newsapp/widgets/News_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  CategoryView({required this.category});

final String category ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              c: category,
            ) ,
          ],
        ),
      
    );
  }
}
