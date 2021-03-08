import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

/// This widget applies a custom theme to a [Card] widget.
/// No shadows and a little rounded border :)
class CardCell extends StatelessWidget {
  final Widget child;

  const CardCell({
    Key key,
    @required this.child,
  }) : super(key: key);

  /// Custom [CardCell] design, specifically for page headings.
  factory CardCell.header(
    BuildContext context, {
    Key key,
    Widget leading,
    @required String title,
    List<Widget> subtitle,
    String details,
  }) {
    return CardCell(
      key: key,
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
                if (subtitle != null)
                  RowLayout(
                    space: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: subtitle,
                  ),
              ],
            ),
          ),
        ]),
        if (details != null) ...[
          Separator.divider(),
          ExpandText(details),
        ]
      ]),
    );
  }

  /// Custom [CardCell] design, specifically for page body.
  factory CardCell.body(
    BuildContext context, {
    Key key,
    @required String title,
    @required Widget child,
  }) {
    return CardCell(
      key: key,
      child: RowLayout(children: <Widget>[
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
      ]),
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
