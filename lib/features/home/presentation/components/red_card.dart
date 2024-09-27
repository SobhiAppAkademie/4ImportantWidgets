import 'package:flutter/material.dart';
import 'package:tut1/features/home/presentation/components/card.dart';

class RedCard extends StatelessWidget {
  final bool isRow;
  final bool minHeight;
  const RedCard({super.key, this.isRow = false, this.minHeight = false});

  @override
  Widget build(BuildContext context) {
    return CustomCard(color: Colors.red, isRow: isRow, minHeight: minHeight);
  }
}
