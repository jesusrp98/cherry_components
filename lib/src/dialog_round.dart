import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

/// Constant which describes the roundness of the mentioned dialog
const kDialogCornerRadius = 12.0;

/// Constant which describes the roundness of the action buttons rendered inside
/// a rounded dialog.
const kDialogActionButtonRadius = 6.0;

/// Default padding applied to the body of a rounded dialog.
const kDialogContentPadding = const EdgeInsets.symmetric(horizontal: 20);

/// Function that builds a centered-rounded dialog. It contains a title, with a
/// predefined text style, and a varietude of children.
Future<T> showRoundDialog<T>({
  @required BuildContext context,
  @required String title,
  @required List<Widget> children,
  List<DialogAction> actions,
  bool barrierDismissible = true,
  Color barrierColor = Colors.black54,
  EdgeInsets padding = kDialogContentPadding,
}) {
  return showDialog(
    context: context,
    barrierDismissible: barrierDismissible,
    barrierColor: barrierColor,
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
        actions: actions,
        padding: padding,
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
  List<DialogAction> actions,
  bool barrierDismissible = true,
  Color barrierColor = Colors.black54,
  bool enableDrag = true,
  EdgeInsets padding = kDialogContentPadding,
}) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).dialogBackgroundColor,
    isDismissible: barrierDismissible,
    barrierColor: barrierColor,
    enableDrag: enableDrag,
    builder: (context) => _RoundDialog.bottom(
      title: title,
      children: children,
      actions: actions,
      padding: padding,
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
  final List<DialogAction> actions;
  final EdgeInsets padding;

  factory _RoundDialog.center({
    Key key,
    @required String title,
    @required List<Widget> children,
    List<DialogAction> actions,
    EdgeInsets padding,
  }) {
    return _RoundDialog._(
      key: key,
      title: title,
      children: children,
      isBottomDialog: false,
      actions: actions,
      padding: padding,
    );
  }

  factory _RoundDialog.bottom({
    Key key,
    @required String title,
    @required List<Widget> children,
    List<DialogAction> actions,
    EdgeInsets padding,
  }) {
    return _RoundDialog._(
      key: key,
      title: title,
      children: children,
      isBottomDialog: true,
      actions: actions,
      padding: padding,
    );
  }

  const _RoundDialog._({
    Key key,
    this.title,
    this.children,
    this.isBottomDialog = false,
    this.actions,
    this.padding,
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
              padding: padding,
              child: ListBody(
                children: children,
              ),
            ),
          ),
          if (actions != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  for (final action in actions)
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        style: Theme.of(context).brightness == Brightness.light
                            ? OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(kDialogActionButtonRadius),
                                  ),
                                ),
                                primary: action.type == DialogActionType.primary
                                    ? Theme.of(context)
                                        .accentTextTheme
                                        .headline6
                                        .color
                                    : action.type == DialogActionType.secondary
                                        ? Theme.of(context).accentColor
                                        : Colors.white,
                                backgroundColor: action.type ==
                                        DialogActionType.primary
                                    ? Theme.of(context).accentColor
                                    : action.type == DialogActionType.secondary
                                        ? null
                                        : Colors.red,
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                              )
                            : OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(kDialogActionButtonRadius),
                                  ),
                                ),
                                primary: action.type == DialogActionType.primary
                                    ? Colors.black
                                    : action.type == DialogActionType.secondary
                                        ? Theme.of(context)
                                            .textTheme
                                            .caption
                                            .color
                                        : Colors.white,
                                backgroundColor: action.type ==
                                        DialogActionType.primary
                                    ? Colors.white
                                    : action.type == DialogActionType.secondary
                                        ? null
                                        : Colors.red,
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                        child: Text(action.title),
                        onPressed: action.onTap,
                      ),
                    )
                ],
              ),
            ),
        ],
      ),
    );
  }
}

/// Describes all the possible types a dialog action can be.
enum DialogActionType { primary, secondary, dangerous }

/// Holds the information about an action that can be performed inside a
/// rounded dialog. It's displayed via a [OutlinedButton].
class DialogAction {
  final String title;
  final VoidCallback onTap;
  final DialogActionType type;

  const DialogAction({
    @required this.title,
    this.onTap,
    this.type = DialogActionType.primary,
  })  : assert(title != null),
        assert(type != null);
}
