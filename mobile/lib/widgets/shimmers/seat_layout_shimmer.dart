import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SeatLayoutShimmer extends StatelessWidget {
  const SeatLayoutShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        children: List.generate(5, (row) {
          final rowLetter = String.fromCharCode(65 + row);
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                SizedBox(width: 24, child: Text(rowLetter)),
                const SizedBox(width: 8),
                ...List.generate(8, (_) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  );
                }),
              ],
            ),
          );
        }),
      ),
    );
  }
}
