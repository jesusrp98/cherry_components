import 'package:flutter/material.dart';

/// This widget is used in the 'Settings' & 'About' screens.
/// It categorizes items based on a theme.
class HeaderText extends StatelessWidget {
  final String data;
  final bool head;

  const HeaderText(
    this.data, {
    Key key,
    this.head = false,
  })  : assert(data != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      minimum: EdgeInsets.only(
        top: head ? 16 : 0,
        left: 16,
      ),
      child: Text(
        data,
        style: Theme.of(context).textTheme.bodyText2.copyWith(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
