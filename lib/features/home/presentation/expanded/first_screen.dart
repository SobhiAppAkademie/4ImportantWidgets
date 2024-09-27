import 'package:flutter/material.dart';
import 'package:tut1/features/home/presentation/components/blue_card.dart';
import 'package:tut1/features/home/presentation/components/red_card.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      bottom: false,
      child: Column(
        children: [
          BlueCard(),
          RedCard(),
        ],
      ),
    ));
  }
}
