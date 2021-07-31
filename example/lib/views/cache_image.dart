import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';

class CacheImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: Separator.spaceChildren(
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
      ),
    );
  }
}
