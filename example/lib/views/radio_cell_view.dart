import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';

class RadioCellView extends StatefulWidget {
  @override
  _RadioCellViewState createState() => _RadioCellViewState();
}

class _RadioCellViewState extends State<RadioCellView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          RadioCell<int>(
            title: 'Blue',
            groupValue: index,
            value: 0,
            onChanged: (value) => setState(() => index = value),
          ),
          RadioCell<int>(
            title: 'White',
            groupValue: index,
            value: 1,
            onChanged: (value) => setState(() => index = value),
          ),
          RadioCell<int>(
            title: 'Whiter!',
            groupValue: index,
            value: 2,
            onChanged: (value) => setState(() => index = value),
          ),
        ],
      ),
    );
  }
}
