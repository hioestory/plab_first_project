import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/material.dart';
import 'screens/splash.dart';
import 'screens/firstpage.dart';
import 'screens/secondpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            home: Splash(),
          );
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            home: FirstPage(),
            // initialRoute: '/',
            // routes: {
            //   '/': (context) => FirstPage(),
            //   '/second': (context) => SecondPage(),
            // }
          );
        }
      },
    );
  }
}
