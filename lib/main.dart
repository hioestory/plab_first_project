import 'package:flutter/material.dart';
import 'package:plab_first_project/screens/detail_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/main_screen_instagram.dart';
import 'screens/main_screen_naver.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Named routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/main_instagram': (context) => MainScreenInstagram(),
      '/main_naver': (context) => MainScreenNaver(),
      '/detail_screen': (context) => DetailScreen()
    },
  ));
}
