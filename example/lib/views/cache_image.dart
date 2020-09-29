import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

class CacheImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: RowLayout.cards(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardCell.body(
            context,
            title: 'Correct image URL',
            child: CacheImage(
              'https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg',
            ),
          ),
          CardCell.body(
            context,
            title: 'Wrong image URL',
            child: Center(
              child: CacheImage(
                'http://google.es',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
