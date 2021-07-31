import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';

/// Widget similar to [ListTile] with custom theme
/// and constructors.
class ListCell extends StatelessWidget {
  final Widget leading, trailing;
  final String title, subtitle;
  final VoidCallback onTap;
  final EdgeInsets contentPadding;
  final bool dense;

  const ListCell({
    Key key,
    this.leading,
    this.trailing,
    @required this.title,
    this.subtitle,
    this.onTap,
    this.contentPadding,
    this.dense = false,
  }) : super(key: key);

  /// Builds a [ListCell] using a [IconData] object as the leading
  /// widget.
  factory ListCell.icon({
    Key key,
    @required IconData icon,
    Widget trailing,
    @required String title,
    String subtitle,
    VoidCallback onTap,
    EdgeInsets contentPadding,
    bool dense = false,
  }) {
    return ListCell(
      key: key,
      leading: Icon(icon, size: 40),
      trailing: trailing,
      title: title,
      subtitle: subtitle,
      onTap: onTap,
      contentPadding: contentPadding,
      dense: dense,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          if (subtitle != null) Separator.spacer(Space.superSmall),
        ],
      ),
      subtitle: subtitle == null
          ? null
          : Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Theme.of(context).textTheme.caption.color,
                  ),
            ),
      trailing: onTap != null && trailing == null
          ? Icon(Icons.chevron_right)
          : trailing,
      contentPadding: contentPadding,
      onTap: onTap,
      dense: dense,
    );
  }
}

/// Text widget with custom theme, generally used as a
/// trailing widget inside [ListCell].
class TrailingText extends StatelessWidget {
  final String data;

  const TrailingText(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.bodyText2.copyWith(
            color: Theme.of(context).textTheme.caption.color,
          ),
    );
  }
}
