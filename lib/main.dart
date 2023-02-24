import 'package:caffeine_quest/color/app_colors.dart';
import 'package:caffeine_quest/pages/auth_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffold,
        primaryColor: Colors.green[600],
        primarySwatch: Colors.blue,
      ),
      home: const AuthPage(),
    );
  }
}
