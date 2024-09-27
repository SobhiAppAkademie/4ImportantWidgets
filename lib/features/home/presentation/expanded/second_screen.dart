import 'package:flutter/material.dart';
import 'package:tut1/features/home/presentation/components/blue_card.dart';
import 'package:tut1/features/home/presentation/components/red_card.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Row(
      children: [
        Expanded(flex: 2, child: BlueCard(isRow: true)),
        Expanded(flex: 4, child: RedCard(isRow: true))
      ],
    ));
  }
}
