import 'package:flutter/material.dart';
import 'main_screen_naver.dart';

import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // 역할을 분리하는 게 좋음
    // build에 있어도 되지만 적합하지 않음
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MainScreenNaver())));
  }

  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/images/logo.png');
    var image = new Image(image: assetsImage, height: 100);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /* appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor:
              Colors.blue, //<- background color to combine with the picture :-)
        ),*/
        body: Container(
          decoration: BoxDecoration(
            color: const Color(0xffFFF9ED),
          ),
          child: new Center(
            child: image,
          ),
        ),
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
