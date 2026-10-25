import 'package:flutter/material.dart';
import 'package:counter_demo/counter_home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        scaffoldBackgroundColor: Colors.white.withValues(alpha: 0.5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
      //   elevatedButtonTheme: ElevatedButtonThemeData(
        
      // ),)
      ),
      home: CounterHome()),
  );
}
