import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// TODO
class RowExpand extends StatelessWidget {
  final Widget child;

  const RowExpand(this.child);

  @override
  Widget build(BuildContext context) {
    return ExpandChild(
      child: child,
    );
  }
}

/// TODO
class TextExpand extends StatelessWidget {
  final String text;
  final int lines;

  const TextExpand(this.text, {this.lines = 8});

  factory TextExpand.small(String text) {
    return TextExpand(text, lines: 6);
  }

  @override
  Widget build(BuildContext context) {
    return ExpandText(
      text,
      maxLength: lines,
      textAlign: TextAlign.justify,
      style: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme)
          .bodyText2
          .copyWith(
            color: Theme.of(context).textTheme.caption.color,
          ),
    );
  }
}

/// TODO
class ExpandList extends StatelessWidget {
  final Widget child;
  final String text;

  const ExpandList({
    this.child,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ShowChild(
      indicator: Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          text,
          style: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme)
              .bodyText2
              .copyWith(
                color: Theme.of(context).textTheme.caption.color,
              ),
        ),
      ),
      child: child,
    );
  }
}
