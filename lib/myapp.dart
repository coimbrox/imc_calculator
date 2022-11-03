import 'package:flutter/material.dart';
import 'package:imc_calculator/controller/home_controller.dart';
import 'home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeController(child: const HomePage()),
    );
  }
}
