
import 'package:flutter/material.dart';
import 'package:newsapp/widgets/category_list.dart';
import 'News_list_view_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // centerTitle: true,
        elevation: 0,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'News',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          Text(
            'Cloud',
            style: TextStyle(fontSize: 20, color: Colors.orange),
          )
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryList(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            NewsListViewBuilder(
              c: 'general',
            ),
          ],
        ),

        /* child: Column(
          
          children: [
            CategoryList() , 
            SizedBox(
              height: 16,
            ),

            Expanded(
                
                child: NewsListView())
              
      
          ],
        ),*/
      ),
    );
  }
}



