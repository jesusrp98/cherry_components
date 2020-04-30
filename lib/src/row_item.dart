import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:row_item/row_item.dart';

/// Wrapper of the [RowItem.text] widget.
class RowText extends StatelessWidget {
  final String title, description;

  const RowText(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return RowItem.text(
      title,
      description,
      titleStyle:
          GoogleFonts.rubikTextTheme(Theme.of(context).textTheme).bodyText2,
      descriptionStyle: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme)
          .bodyText2
          .copyWith(
            color: Theme.of(context).textTheme.caption.color,
          ),
    );
  }
}

/// Wrapper of the [RowItem.icon] widget.
class RowBoolean extends StatelessWidget {
  final String title;
  final bool status;

  const RowBoolean(this.title, this.status);

  @override
  Widget build(BuildContext context) {
    return RowItem.boolean(
      title,
      status,
      iconSize: 18,
      outline: true,
      titleStyle:
          GoogleFonts.rubikTextTheme(Theme.of(context).textTheme).bodyText2,
    );
  }
}

/// Wrapper of the [RowItem.clickable] widget.
class RowTap extends StatelessWidget {
  final String title, description, fallback;
  final Widget screen;

  const RowTap(
    this.title,
    this.description, {
    @required this.fallback,
    this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return RowItem.tap(
      title,
      description ?? fallback,
      titleStyle:
          GoogleFonts.rubikTextTheme(Theme.of(context).textTheme).bodyText2,
      descriptionStyle: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme)
          .bodyText2
          .copyWith(
            color: Theme.of(context).textTheme.caption.color,
          ),
      onTap: description == null
          ? null
          : () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => screen,
                  fullscreenDialog: true,
                ),
              ),
    );
  }
}
