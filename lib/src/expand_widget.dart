import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

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
      maxLines: lines,
      textAlign: TextAlign.justify,
      style: Theme.of(context).textTheme.bodyText2.copyWith(
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
    return ExpandChild(
      expandArrowStyle: ExpandArrowStyle.text,
      hideArrowOnExpanded: true,
      hintTextStyle: Theme.of(context).textTheme.bodyText2.copyWith(
            color: Theme.of(context).textTheme.caption.color,
          ),
      child: child,
    );
  }
}
