import 'package:flutter/material.dart';
import 'package:mobile/utils/colors.dart';

class BusSeat extends StatelessWidget {
  final String label;
  final Color bg;
  final Color border;

  const BusSeat({
    super.key,
    required this.label,
    required this.bg,
    required this.border,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        width: 45,
        height: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bg,
          border: Border.all(color: border),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: DColors.neutral6,
          ),
        ),
      ),
    );
  }
}
