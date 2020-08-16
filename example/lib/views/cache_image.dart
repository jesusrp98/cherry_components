import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

class CacheImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: RowLayout.body(
        children: [
          CacheImage(
            'https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg',
          ),
          Separator.divider(),
          CacheImage(
            'http://google.es',
          ),
        ],
      ),
    );
  }
}
