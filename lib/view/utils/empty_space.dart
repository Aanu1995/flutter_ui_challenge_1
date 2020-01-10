import 'package:flutter/material.dart';

class EmptySpace extends StatelessWidget {
  final double multiple;
  final bool horizontal;
  final bool vertical;
  const EmptySpace({
    Key key,
    this.multiple = 1.0,
    this.horizontal = false,
    this.vertical = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spacing = 8.0 * multiple;
    return SizedBox(
      height: horizontal ? 0.0 : spacing,
      width: vertical ? 0.0 : spacing,
    );
  }
}
