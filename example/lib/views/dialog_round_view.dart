import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';

class DialogRoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FlatButton(
            child: Text('Center rounded dialog'),
            onPressed: () => showRoundDialog(
              context: context,
              title: 'Lorem ipsum',
              children: [
                Center(
                  child: Text('Hello world'),
                ),
              ],
            ),
          ),
          FlatButton(
            child: Text('Bottom rounded dialog'),
            onPressed: () => showBottomRoundDialog(
              context: context,
              title: 'Lorem ipsum',
              children: [
                Center(
                  child: Text('Hello world'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
