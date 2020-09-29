import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

class ItemCellView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: RowLayout.cards(
        children: [
          CardCell.body(
            context,
            title: 'ItemCell',
            child: Center(
              child: ItemCell(
                icon: Icons.location_city,
                text: 'Lorem ipsum',
              ),
            ),
          ),
          CardCell.body(
            context,
            title: 'ItemCell with click',
            child: Builder(
              builder: (context) => Center(
                child: ItemCell(
                  icon: Icons.location_city,
                  text: 'Lorem ipsum',
                  onTap: () => Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Lorem ipsum'),
                    ),
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
