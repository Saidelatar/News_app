import 'package:flutter/material.dart';

import '../models/home_model.dart';
import 'category_card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  final List<Home> Homy = const [
    Home(text: 'Business', AssetImage: 'assets/OIP.jpeg'),
    Home(text: 'Sports', AssetImage: 'assets/th.jpeg'),
    Home(text: 'Science', AssetImage: 'assets/science.avif'),
    Home(text: 'Entertainment', AssetImage: 'assets/1.jpeg'),
    Home(text: 'Technology', AssetImage: 'assets/download.jpeg'),
    Home(text: 'general', AssetImage: 'assets/general.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          itemCount: Homy.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryCard(H: Homy[index]);
          }),
    );
  }
}
