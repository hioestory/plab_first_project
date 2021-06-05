import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MainScreen())));

    var assetsImage = new AssetImage(
        'assets/images/splash_plablogo.png'); //<- Creates an object that fetches an image.
    var image = new Image(
        image: assetsImage,
        height: 100); //<- Creates a widget that displays an image.

    return MaterialApp(
      home: Scaffold(
        /* appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor:
              Colors.blue, //<- background color to combine with the picture :-)
        ),*/
        body: Container(
          decoration: new BoxDecoration(color: Colors.white),
          child: new Center(
            child: image,
          ),
        ), //<- place where the image appears
      ),
    );
  }
}

// import 'main_screen.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     Future.delayed(Duration(seconds: 100), () {
//       print("After 3 seconds");
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => MainScreen()));
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: FlutterLogo(
//               size: 200,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
