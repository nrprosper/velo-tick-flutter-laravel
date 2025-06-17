import 'package:flutter/material.dart';
import 'package:mobile/utils/colors.dart';

class DTheme {
  const DTheme._();

  static final ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      );

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    prefixIconColor: DColors.neutral2,
    suffixIconColor: DColors.neutral2,
    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(width: 2, color: Colors.black12),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.black12),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.black),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Colors.orange),
    ),
  );

  static final CardThemeData cardThemeData = CardThemeData(
    elevation: 0,
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: BorderSide(color: DColors.neutral2),
    ),
  );

  static final TextStyle hintTextStyle = TextStyle(
    fontSize: 14,
    color: Colors.grey,
    fontWeight: FontWeight.w400,
  );

  static final InputDecoration dropdownInputDecoration = InputDecoration(
    labelStyle: labelStyle,
    border: InputBorder.none,
    contentPadding: EdgeInsets.zero,
  );

  static final TextStyle dropdownItemTextStyle = TextStyle(
    fontSize: 14,
    color: Colors.black87,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle labelStyle = TextStyle(
    fontSize: 16,
    color: DColors.neutral6,
    fontWeight: FontWeight.w500,
  );


}
