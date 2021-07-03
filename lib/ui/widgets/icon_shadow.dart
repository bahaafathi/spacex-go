import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';

class IconShadow extends StatelessWidget {
  final IconData icon;
  final EdgeInsets padding;

  const IconShadow(this.icon, {Key key, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Center(
        child: DecoratedIcon(
          icon,
          size: 24,
          shadows: [
            Shadow(
              offset: Offset(0, 0),
              blurRadius: 2,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}