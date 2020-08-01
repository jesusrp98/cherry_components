import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

class ExpandWidgetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: RowLayout.body(
        children: [
          TextExpand(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce semper ut lacus ut feugiat.',
          ),
          TextExpand.small(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce semper ut lacus ut feugiat. Quisque dignissim varius erat id ullamcorper. Maecenas volutpat felis ut venenatis accumsan. Fusce vehicula tristique aliquet. Integer eu nisl magna. Mauris sapien magna, dapibus id faucibus ut, volutpat rutrum nisi. Suspendisse aliquam neque imperdiet metus vehicula iaculis. Etiam laoreet lacus sed accumsan ullamcorper. Fusce elit diam, faucibus a dignissim eget, efficitur consectetur ligula. Integer facilisis, dolor et hendrerit pretium, neque turpis elementum nisi, quis cursus libero urna ac mauris. Quisque a dictum mi. ',
          ),
          TextExpand(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce semper ut lacus ut feugiat. Quisque dignissim varius erat id ullamcorper. Maecenas volutpat felis ut venenatis accumsan. Fusce vehicula tristique aliquet. Integer eu nisl magna. Mauris sapien magna, dapibus id faucibus ut, volutpat rutrum nisi. Suspendisse aliquam neque imperdiet metus vehicula iaculis. Etiam laoreet lacus sed accumsan ullamcorper. Fusce elit diam, faucibus a dignissim eget, efficitur consectetur ligula. Integer facilisis, dolor et hendrerit pretium, neque turpis elementum nisi, quis cursus libero urna ac mauris. Quisque a dictum mi. ',
          ),
          Separator.divider(),
          ExpandList(
            child: Text('Hello, World!'),
          ),
          ExpandList(
            text: 'Lorem ipsum',
            child: Text('Hello, World!'),
          ),
        ],
      ),
    );
  }
}
