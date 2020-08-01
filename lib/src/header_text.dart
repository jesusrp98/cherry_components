import 'package:flutter/material.dart';

/// This widget is used in the 'Settings' & 'About' screens.
/// It categorizes items based on a theme.
class HeaderText extends StatelessWidget {
  final String text;
  final bool head;

  const HeaderText(this.text, {this.head = false});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      minimum: EdgeInsets.only(
        top: head ? 16 : 0,
        left: 16,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2.copyWith(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
