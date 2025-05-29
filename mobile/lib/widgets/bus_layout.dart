import 'package:flutter/material.dart';
import 'package:mobile/utils/colors.dart';

class BusLayout extends StatelessWidget {
  final Widget seats;

  const BusLayout({super.key, required this.seats});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(color: DColors.neutral2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: seats,
    );
  }
}
