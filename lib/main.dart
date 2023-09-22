import 'package:flutter/material.dart';
import 'package:newsapp/widgets/home_view.dart';


void main() {
  
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
