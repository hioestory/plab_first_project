import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/main_screen.dart';
import 'screens/detail_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/main': (context) => MainScreen(),
      '/detail': (context) => DetailScreen()
    },
  ));
}
