import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

/// Wrapper of the [ExpandText] widget.
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
      expandOnGesture: false,
      style: Theme.of(context).textTheme.bodyText2.copyWith(
            color: Theme.of(context).textTheme.caption.color,
          ),
    );
  }
}

/// Wrapper of the [ExpandChild] widget.
class ExpandList extends StatelessWidget {
  final Widget child;
  final String text;

  const ExpandList({
    @required this.child,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandChild(
      expandArrowStyle: ExpandArrowStyle.text,
      hideArrowOnExpanded: true,
      collapsedHint: text,
      hintTextStyle: Theme.of(context).textTheme.bodyText2.copyWith(
            color: Theme.of(context).textTheme.caption.color,
          ),
      child: child,
    );
  }
}
