import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';

enum ShadowSize { small, big }

/// This widget applies a shadow map to a specific 'IconData' object.
/// Uses the [decorated_icon] library under the hood.
class IconShadow extends StatelessWidget {
  /// The icon to display.
  final IconData icon;

  /// Padding to apply to the icon.
  /// Defaults to 'zero'.
  final EdgeInsets padding;

  /// Shadow size for the shadow map.
  /// - Small equals to [2] of blur radius.
  /// - Big equals to [4] of blur radius.
  final ShadowSize shadowSize;

  /// Color of the shadow to apply.
  /// Defaults to theme's [primaryColor].
  final Color shadowColor;

  const IconShadow(
    this.icon, {
    Key key,
    this.padding,
    this.shadowSize = ShadowSize.small,
    this.shadowColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Center(
        child: DecoratedIcon(
          icon,
          shadows: [
            Shadow(
              blurRadius: shadowSize == ShadowSize.small ? 2 : 4,
              color: shadowColor ?? Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
