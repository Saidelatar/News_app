
import 'package:flutter/material.dart';
import 'package:newsapp/views/category_view.dart';
import '../models/home_model.dart';

class CategoryCard extends StatelessWidget {
  final Home H;
  const CategoryCard({required this.H});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
             category: H.text
          );
        }));
      },
      child: SizedBox(
        child: Container(
          margin: EdgeInsets.only(right: 8),
          width: 160,
          height: 85,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(H.AssetImage), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Text(
              H.text,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
