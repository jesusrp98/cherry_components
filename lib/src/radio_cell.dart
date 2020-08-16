import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

const _kRadioSize = 22.0;

/// Widget similar to [RadioListTile] with custon theming.
class RadioCell<T> extends StatelessWidget {
  final String title;
  final T groupValue, value;
  final ValueChanged<T> onChanged;

  const RadioCell({
    Key key,
    @required this.title,
    @required this.groupValue,
    @required this.value,
    @required this.onChanged,
  }) : super(key: key);

  bool get _isChecked => groupValue == value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        color:
            _isChecked ? Theme.of(context).accentColor.withOpacity(0.24) : null,
        child: Row(
          children: <Widget>[
            Icon(
              _isChecked ? Icons.check_circle : Icons.panorama_fish_eye,
              size: _kRadioSize,
              color: _isChecked
                  ? Theme.of(context).accentColor
                  : Theme.of(context).textTheme.caption.color,
            ),
            Separator.spacer(space: 16),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
