import 'package:cherry_components/cherry_components.dart';
import 'package:row_collection/row_collection.dart';
import 'package:flutter/material.dart';

class ListCellView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListCell(
            title: 'Lorem ipsum',
          ),
          Separator.divider(indent: 16),
          ListCell(
            title: 'Lorem ipsum',
            subtitle: 'Lorem ipsum',
          ),
          Separator.divider(indent: 16),
          ListCell(
            title:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce semper ut lacus ut feugiat',
            subtitle:
                'Lorem ipsum dolor sit amet, consectetur adipiscing.',
            trailing: TrailingText('#99'),
          ),
          Separator.divider(indent: 16),
          ListCell(
            title:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce semper ut lacus ut feugiat',
            subtitle:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce semper ut lacus ut feugiat. Quisque dignissim varius erat id ullamcorper. Maecenas volutpat felis ut venenatis accumsan.',
          ),
          Separator.divider(indent: 16),
          ListCell(
            title:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce semper ut lacus ut feugiat',
            subtitle:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce semper ut lacus ut feugiat. Quisque dignissim varius erat id ullamcorper. Maecenas volutpat felis ut venenatis accumsan.',
            onTap: () => null,
          ),
          Separator.divider(indent: 16),
          ListCell.icon(
            icon: Icons.location_city,
            title: 'Lorem ipsum',
            subtitle:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          ),
          Separator.divider(indent: 16),
          ListCell.icon(
            icon: Icons.location_city,
            title: 'Lorem ipsum',
            subtitle:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
