import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

class HeaderTextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: RowLayout(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderText(
            'Lorem ipsum',
            head: true,
          ),
          HeaderText('Lorem ipsum'),
        ],
      ),
    );
  }
}
