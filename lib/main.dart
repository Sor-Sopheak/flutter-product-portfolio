import 'package:flutter/material.dart';
import 'package:flutter_product_portfolio/core/theme/app_theme.dart';
import 'package:flutter_product_portfolio/features/home/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Porfolio',
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}