import 'package:flutter/material.dart';
import 'package:flutter_product_portfolio/features/home/presentation/screens/navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(),
      body: Text('Home screen'),
    );
  }
}