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
            'I\'m the head of the page!',
            head: true,
          ),
          HeaderText('I\'m a header text!'),
        ],
      ),
    );
  }
}
