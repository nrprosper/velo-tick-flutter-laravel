import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobile/utils/colors.dart';

class RecentActivityCard extends StatelessWidget {
  const RecentActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Column(
          children: [
            DefaultTextStyle(
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: DColors.neutral5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("FEB 27, 2026"),
                    Text("9:37 AM")
                  ],
                )
            ),
            const SizedBox(height: 20),
            DefaultTextStyle(
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
                color: DColors.neutral6,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kigali"),
                    Icon(Iconsax.arrow_right_1),
                    Text("Uganda"),
                  ]
              )
            )
          ],
        ),
      ),
    );
  }
}
