
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/screens/onbording_screen.dart';
import 'package:mobile/utils/theme.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.outfitTextTheme(
          Theme.of(context).textTheme,
        ),
        elevatedButtonTheme: DTheme.elevatedButtonThemeData,
        inputDecorationTheme: DTheme.inputDecorationTheme
      ),
      themeMode: ThemeMode.light,
      home: OnbordingScreen(),
    );
  }
}
