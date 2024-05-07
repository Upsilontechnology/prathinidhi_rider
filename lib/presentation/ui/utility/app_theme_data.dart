import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';


class AppThemeData {
  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
          primary: AppColors.primaryColor,
          background: Colors.white),
      progressIndicatorTheme:
      const ProgressIndicatorThemeData(color: AppColors.primaryColor),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black),
        bodySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.grey[200], // Set the background color to grey
        filled: true, // Make sure to set filled to true
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.grey.shade800),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white, width: 1.5),
        ),
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white, width: 1.5),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(width: 1.5, color: Colors.white),
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(width: 1.5, color: Colors.white),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.grey.shade300,
          foregroundColor: Colors.black,
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: AppColors.primaryColor),
      ),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontSize: 20, color: Colors.grey.shade800),
        toolbarHeight: 40,
        elevation: 0.3,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
      )
    // primarySwatch: MaterialColor(
    //   AppColors.primaryColor.value,
    //   AppColors.colorSwatch,
    // ),
  );
}