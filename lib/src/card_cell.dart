import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

import 'index.dart';

/// TODO
class CardCell extends StatelessWidget {
  final Widget child;

  const CardCell({@required this.child});

  /// TODO
  factory CardCell.header(
    BuildContext context, {
    Widget leading,
    @required String title,
    Widget subtitle,
    @required String details,
  }) {
    return CardCell(
      child: RowLayout(children: <Widget>[
        Row(children: <Widget>[
          if (leading != null) ...[
            leading,
            Separator.spacer(space: 12),
          ],
          Expanded(
            child: RowLayout(
              space: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                ),
                if (subtitle != null) subtitle,
              ],
            ),
          ),
        ]),
        Separator.divider(),
        TextExpand(details)
      ]),
    );
  }

  /// TODO
  factory CardCell.body(
    BuildContext context, {
    @required String title,
    @required Widget child,
  }) {
    return CardCell(
      child: RowLayout(
        children: <Widget>[
          if (title != null)
            Text(
              title.toUpperCase(),
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
            ),
          child
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          width: 2,
          color: Theme.of(context).dividerColor.withOpacity(
                Theme.of(context).brightness == Brightness.dark ? 0.4 : 0.1,
              ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: child,
      ),
    );
  }
}
