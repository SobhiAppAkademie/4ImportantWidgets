
import 'package:flutter/material.dart';
import 'package:tut1/features/home/presentation/components/blue_card.dart';
import 'package:tut1/features/home/presentation/components/red_card.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
        children: [
          // BlueCard erhält 1/4 der Höhe
          Expanded(flex: 1, child: BlueCard()),

          // RedCard erhält 2/4 der Höhe
          Expanded(flex: 2, child: RedCard()),

          // BlueCard erhält 1/4 der Höhe
          Expanded(flex: 1, child: BlueCard())
        ],
      )
    );
  }
}
