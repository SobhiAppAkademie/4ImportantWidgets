import 'package:flutter/material.dart';
import 'package:tut1/features/home/presentation/components/blue_card.dart';
import 'package:tut1/features/home/presentation/components/red_card.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        BlueCard(),
        RedCard(),
        SizedBox(height: 2),

        // Row soll volle Höhe bekommen
        Row(
          children: [
            // Blau soll volle Breite bekommen
            Expanded(child: BlueCard(isRow: true, minHeight: true)),
            RedCard(isRow: true, minHeight: true)
          ],
        )
      ],
    ));
  }
}
