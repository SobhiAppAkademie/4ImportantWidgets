import 'package:flutter/material.dart';
import 'package:tut1/features/home/presentation/components/card.dart';

class BlueCard extends StatelessWidget {
  final bool isRow;
  final bool minHeight;
  const BlueCard({super.key, this.isRow = false, this.minHeight = false});

  @override
  Widget build(BuildContext context) {
    return CustomCard(color: Colors.blue, isRow: isRow, minHeight: minHeight);
  }
}
