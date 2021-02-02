import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

/// Constant which describes the roundness of the mentioned dialog
const kDialogCornerRadius = 12.0;

/// Function that builds a centered-rounded dialog. It contains a title, with a
/// predefined text style, and a varietude of children.
Future<T> showRoundDialog<T>({
  @required BuildContext context,
  @required String title,
  @required List<Widget> children,
}) {
  return showDialog(
    context: context,
    builder: (context) => Dialog(
      backgroundColor: Theme.of(context).dialogBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(kDialogCornerRadius),
        ),
      ),
      child: _RoundDialog.center(
        title: title,
        children: children,
      ),
    ),
  );
}

/// Function that builds a bottom-rounded dialog. It contains a title, with a
/// predefined text style, and a varietude of children.
Future<T> showBottomRoundDialog<T>({
  @required BuildContext context,
  @required String title,
  @required List<Widget> children,
}) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).dialogBackgroundColor,
    builder: (context) => _RoundDialog.bottom(
      title: title,
      children: children,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(kDialogCornerRadius),
        topRight: Radius.circular(kDialogCornerRadius),
      ),
    ),
  );
}

/// Private class that builds the internal structure of a rounded dialog.
class _RoundDialog extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final bool isBottomDialog;

  factory _RoundDialog.center({
    Key key,
    @required String title,
    @required List<Widget> children,
  }) {
    return _RoundDialog._(
      key: key,
      title: title,
      children: children,
      isBottomDialog: false,
    );
  }

  factory _RoundDialog.bottom({
    Key key,
    @required String title,
    @required List<Widget> children,
  }) {
    return _RoundDialog._(
      key: key,
      title: title,
      children: children,
      isBottomDialog: true,
    );
  }

  const _RoundDialog._({
    Key key,
    this.title,
    this.children,
    this.isBottomDialog = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: isBottomDialog
          ? EdgeInsets.only(bottom: 42)
          : EdgeInsets.only(bottom: 20),
      bottom: false,
      child: RowLayout(
        mainAxisSize: MainAxisSize.min,
        padding: EdgeInsets.only(top: 20),
        space: 16,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              title.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: ListBody(
                children: children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
