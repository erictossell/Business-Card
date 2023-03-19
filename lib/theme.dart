import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var appTheme = ThemeData(
  fontFamily: GoogleFonts.rajdhani().fontFamily,
  primaryColor: const Color.fromRGBO(181, 202, 195, 1),
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
        fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.black87),
    bodyMedium: TextStyle(
        fontSize: 36.0, fontStyle: FontStyle.normal, color: Colors.black87),
    bodySmall:
        TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.black87),
    titleLarge: TextStyle(
        fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.black87),
    titleMedium: TextStyle(
        fontSize: 24.0, fontStyle: FontStyle.normal, color: Colors.black87),
    titleSmall: TextStyle(
      fontSize: 14.0,
      fontFamily: 'Hind',
    ),
  ),
);
