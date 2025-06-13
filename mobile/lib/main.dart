
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/screens/layout.dart';
import 'package:mobile/screens/onbording_screen.dart';
import 'package:mobile/utils/theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  final storage = FlutterSecureStorage();
  final token = await storage.read(key: 'token');

  final initialScreen = token != null ? const Layout() : const OnbordingScreen();

  runApp(ProviderScope(child: Application(initialScreen: initialScreen)));
}

class Application extends StatelessWidget {
  final Widget initialScreen;
  const Application({super.key, required this.initialScreen});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white
        ),
        textTheme: GoogleFonts.outfitTextTheme(
          Theme.of(context).textTheme,
        ),
        elevatedButtonTheme: DTheme.elevatedButtonThemeData,
        inputDecorationTheme: DTheme.inputDecorationTheme,
        cardTheme: DTheme.cardThemeData,
        dialogTheme: const DialogThemeData(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        datePickerTheme: const DatePickerThemeData(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),
      themeMode: ThemeMode.light,
      home: initialScreen,
    );
  }
}
