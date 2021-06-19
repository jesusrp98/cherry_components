import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

/// Shows information rendering a small clickable widget.
/// You can use the [icon] and [text] properties to display the info.
class ItemCell extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final TextOverflow textOverflow;
  final int maxLines;

  const ItemCell({
    Key key,
    @required this.icon,
    @required this.text,
    this.textOverflow = TextOverflow.ellipsis,
    this.maxLines = 1,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            icon,
            size: 16,
            color: Theme.of(context).textTheme.caption.color,
          ),
          Separator.spacer(space: 6),
          Flexible(
            child: Text(
              text,
              overflow: textOverflow,
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Theme.of(context).textTheme.caption.color,
                    decoration: onTap == null
                        ? TextDecoration.none
                        : TextDecoration.underline,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
