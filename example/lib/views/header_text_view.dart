import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';

class HeaderTextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: Separator.spaceChildren(
          children: [
            HeaderText(
              'Lorem ipsum',
              head: true,
            ),
            HeaderText('Lorem ipsum'),
          ],
        ),
      ),
    );
  }
}
