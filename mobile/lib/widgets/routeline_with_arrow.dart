import 'package:flutter/material.dart';

class RouteLineWithArrow extends StatelessWidget {
  const RouteLineWithArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        alignment: Alignment.center,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  (constraints.maxWidth / 6).floor(),
                      (index) => Container(
                    width: 3,
                    height: 1.5,
                    color: Colors.grey.shade400,
                  ),
                ),
              );
            },
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: const Icon(Icons.arrow_forward, size: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}