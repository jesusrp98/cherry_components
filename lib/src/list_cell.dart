import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:row_collection/row_collection.dart';

/// TODO
class ListCell extends StatelessWidget {
  final Widget leading, trailing;
  final String title, subtitle;
  final VoidCallback onTap;
  final EdgeInsets contentPadding;
  final bool dense;

  const ListCell({
    this.leading,
    this.trailing,
    @required this.title,
    this.subtitle,
    this.onTap,
    this.contentPadding,
    this.dense,
  });

  // TODO
  factory ListCell.svg({
    @required BuildContext context,
    @required String image,
    Widget trailing,
    @required String title,
    String subtitle,
    VoidCallback onTap,
    bool dense,
  }) {
    return ListCell(
      leading: SvgPicture.asset(
        image,
        colorBlendMode: BlendMode.srcATop,
        width: 40,
        height: 40,
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.black45
            : null,
      ),
      trailing: trailing,
      title: title,
      subtitle: subtitle,
      onTap: onTap,
      dense: dense,
    );
  }

  factory ListCell.icon({
    @required IconData icon,
    Widget trailing,
    @required String title,
    String subtitle,
    VoidCallback onTap,
    EdgeInsets contentPadding,
    bool dense,
  }) {
    return ListCell(
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
      dense: dense,
      leading: leading,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: GoogleFonts.rubikTextTheme(
              Theme.of(context).textTheme,
            ).subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          if (subtitle != null) Separator.spacer(space: 4),
        ],
      ),
      subtitle: subtitle == null
          ? null
          : Text(
              subtitle,
              style: GoogleFonts.rubikTextTheme(
                Theme.of(context).textTheme,
              ).bodyText2.copyWith(
                    color: Theme.of(context).textTheme.caption.color,
                  ),
            ),
      trailing: trailing,
      contentPadding: contentPadding,
      onTap: onTap,
    );
  }
}

/// TODO
class CellTrailingText extends StatelessWidget {
  final String number;

  const CellTrailingText(this.number);

  @override
  Widget build(BuildContext context) {
    return Text(
      number,
      style: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme)
          .bodyText2
          .copyWith(
            color: Theme.of(context).textTheme.caption.color,
          ),
    );
  }
}
