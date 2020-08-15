import 'package:flutter/material.dart';
import 'package:row_item/row_item.dart';

/// Wrapper of the [RowItem.text] widget.
class RowText extends StatelessWidget {
  final String title, description;

  const RowText(
    this.title,
    this.description, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RowItem.text(
      title,
      description,
      titleStyle: Theme.of(context).textTheme.bodyText2,
      descriptionStyle: Theme.of(context).textTheme.bodyText2.copyWith(
            color: Theme.of(context).textTheme.caption.color,
          ),
    );
  }
}

/// Wrapper of the [RowItem.boolean] widget.
class RowBoolean extends StatelessWidget {
  final String title;
  final bool status;

  const RowBoolean(
    this.title,
    this.status, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RowItem.boolean(
      title,
      status,
      iconSize: 18,
      outline: true,
      titleStyle: Theme.of(context).textTheme.bodyText2,
    );
  }
}

/// Wrapper of the [RowItem.tap] widget.
class RowTap extends StatelessWidget {
  final String title, description, fallback;
  final WidgetBuilder screenBuilder;

  const RowTap(
    this.title,
    this.description, {
    Key key,
    @required this.fallback,
    @required this.screenBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RowItem.tap(
      title,
      description ?? fallback,
      titleStyle: Theme.of(context).textTheme.bodyText2,
      descriptionStyle: Theme.of(context).textTheme.bodyText2.copyWith(
            color: Theme.of(context).textTheme.caption.color,
            decoration: description != null
                ? TextDecoration.underline
                : TextDecoration.none,
          ),
      onTap: description == null
          ? null
          : () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: screenBuilder,
                  fullscreenDialog: true,
                ),
              ),
    );
  }
}
