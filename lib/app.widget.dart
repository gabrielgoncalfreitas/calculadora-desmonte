import 'package:flutter/material.dart';
import 'package:calculadora_de_desmonte/pages/home.page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.blueGrey.shade900,
        ).copyWith(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueGrey,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        scaffoldBackgroundColor: Colors.blueGrey,
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        dialogBackgroundColor: Colors.blueGrey,
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
          displaySmall: TextStyle(color: Colors.white),
          displayMedium: TextStyle(color: Colors.white),
          displayLarge: TextStyle(color: Colors.white),
          headlineSmall: TextStyle(color: Colors.white),
          headlineMedium: TextStyle(color: Colors.white),
          headlineLarge: TextStyle(color: Colors.white),
          labelSmall: TextStyle(color: Colors.white),
          labelMedium: TextStyle(color: Colors.white),
          labelLarge: TextStyle(color: Colors.white),
          titleSmall: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white),
          titleLarge: TextStyle(color: Colors.white),
        ),
      ),
      home: HomePage(),
    );
  }
}
