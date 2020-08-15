import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

import 'expand_widget.dart';

/// Widget similar to [ListCell] that represents more information
/// about a specific theme. It also features expandable description text.
class DetailsCell extends StatelessWidget {
  final String leading, title, subtitle, body;
  final VoidCallback onTap;

  const DetailsCell({
    Key key,
    this.leading,
    @required this.title,
    this.subtitle,
    @required this.body,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: RowLayout(
        space: 8,
        padding: EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        children: <Widget>[
          Row(children: <Widget>[
            if (leading != null) ...[
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor.withOpacity(0.65),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).accentColor,
                    width: 3,
                  ),
                ),
                child: Center(
                  child: Text(
                    leading,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color:
                              Theme.of(context).accentTextTheme.subtitle1.color,
                        ),
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  ),
                ),
              ),
              Separator.spacer(),
            ],
            Expanded(
              child: RowLayout(
                crossAxisAlignment: CrossAxisAlignment.start,
                space: 4,
                children: <Widget>[
                  Text(
                    title,
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodyText2,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                ],
              ),
            ),
            if (onTap != null)
              Icon(
                Icons.chevron_right,
                color: Theme.of(context).textTheme.caption.color,
              ),
          ]),
          if (body != null) TextExpand.small(body),
        ],
      ),
    );
  }
}
