import 'dart:js';

import 'package:flutter/material.dart';
import 'package:plab_first_project/models/Instagram.dart';
import 'screens/splash_screen.dart';
import 'screens/main_screen_instagram.dart';
import 'screens/main_screen_naver.dart';

import 'screens/detail_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/main_instagram': (context) => MainScreenInstagram(),
      '/main_naver': (context) => MainScreenNaver(),
    },
  ));
}
