import 'package:flutter/material.dart';
import '../models/Instagram.dart';

class DetailScreen extends StatelessWidget {
  final Instagram instagram;
  DetailScreen(this.instagram);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${instagram.tag}'),
      ),
      body: Container(),
    );
  }
}

// class DetailScreen extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: Text('디테일 페이지입니다'),
//           onPressed: () {
//             // Named route를 사용하여 두 번째 화면으로 전환합니다.
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }
