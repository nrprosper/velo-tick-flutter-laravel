import 'package:flutter/material.dart';
import 'package:mobile/utils/colors.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;
  final String description;
  const AuthLayout({super.key, required this.child, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -200,
            right: -200,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: DColors.primary2,
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    spacing: 20.0,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo.png', width: 80, height: 80),
                      Text(
                        description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: DColors.neutral5
                        ),
                      ),
                      child,
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}
