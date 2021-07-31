import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';

class ItemCellView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: Separator.spaceChildren(
          children: [
            ItemCell(
              icon: Icons.location_city,
              text: 'Lorem ipsum',
            ),
            Builder(
              builder: (context) => ItemCell(
                icon: Icons.location_city,
                text: 'Lorem ipsum',
                onTap: () => Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Lorem ipsum'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
