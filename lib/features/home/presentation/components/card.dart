import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final bool isRow;
  final bool minHeight;
  final Color color;
  const CustomCard(
      {super.key,
      required this.color,
      this.isRow = false,
      this.minHeight = false});

  /// Ich habe hier eine Mindesthöhe bzw. Mindestbreite, je nach Anwendungsfall, eingestellt, um zu sehen, wie sich die Widgets verändern, wenn man Expanded benutzt.

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: isRow
            ? BoxConstraints(minWidth: 100, minHeight: minHeight ? 100 : 0)
            : const BoxConstraints(minHeight: 100),
        color: color);
  }
}
