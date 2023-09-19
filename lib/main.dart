import 'package:flutter/material.dart';
import 'package:expanse_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);
var kColorSchemeDark = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kColorSchemeDark,
        cardTheme: const CardTheme().copyWith(
          color: kColorSchemeDark.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorSchemeDark.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              bodyMedium: const TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 15,
              ),
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorSchemeDark.onSecondaryContainer,
                fontSize: 20,
              ),
            ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: kColorScheme.primaryContainer,
          foregroundColor: kColorScheme.onPrimaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              bodyMedium: TextStyle(
                fontWeight: FontWeight.normal,
                color: kColorScheme.onPrimaryContainer,
                fontSize: 15,
              ),
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 20,
              ),
            ),
      ),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
