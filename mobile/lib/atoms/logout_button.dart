import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/data/providers.dart';
import 'package:mobile/screens/auth/login_screen.dart';
import 'package:mobile/utils/colors.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    ref.listen(
      logoutNotifierProvider,
          (previous, next) {
        if (next.isSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        }
      },
    );

    final logoutState = ref.watch(logoutNotifierProvider);

    return SizedBox(
      height: 50.0,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          ref.read(logoutNotifierProvider.notifier).logout();
        },
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(DColors.warning5),
        ),
        child: logoutState.isLoading
            ? const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        )
            : const Text("Logout"),
      )
    );
  }
}
