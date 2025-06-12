import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProfileShimmer extends StatelessWidget {
  const ProfileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Title placeholder
          Container(
            width: 150,
            height: 20,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 100,
                height: 16,
                color: Colors.white,
              ),
              const Spacer(),
              Container(
                width: 150,
                height: 16,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 100,
                height: 16,
                color: Colors.white,
              ),
              const Spacer(),
              Container(
                width: 150,
                height: 16,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}