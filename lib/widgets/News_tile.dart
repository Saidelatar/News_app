

import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class NewsTile extends StatelessWidget {
  final Articles ar;

  const NewsTile({super.key, required this.ar});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child:ar.image !=null ? Image.network(
            ar.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          )  : Icon(Icons.error)
          ),
                
        
        Text(
          ar.text,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
            color: Colors.black,
          ),
        ),
        Text(ar.desc ?? '',
            style: TextStyle(
              fontSize: 15,
              overflow: TextOverflow.ellipsis,
              color: Colors.grey,
            )),
      ],
    );
  }
}
