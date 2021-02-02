import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

class RowItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: RowLayout.body(
        children: [
          RowText('Lorem ipsum', 'Lorem ipsum'),
          Separator.divider(),
          RowBoolean('Lorem ipsum', true),
          RowBoolean('Lorem ipsum', false),
          RowBoolean('Lorem ipsum', null),
          Separator.divider(),
          RowTap(
            'Lorem ipsum',
            null,
            fallback: 'Unkown',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text('Lorem ipsum'),
                  ),
                  body: Center(
                    child: Text('Lorem ipsum'),
                  ),
                ),
              ),
            ),
          ),
          RowTap(
            'Lorem ipsum',
            'Lorem ipsum',
            fallback: 'Unkown',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text('Lorem ipsum'),
                  ),
                  body: Center(
                    child: Text('Lorem ipsum'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
