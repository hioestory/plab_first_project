import 'package:flutter/material.dart';
import '../models/Stadium.dart';

class DetailScreen extends StatelessWidget {
  final Stadium stadium;
  DetailScreen(this.stadium);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(stadium.name),
      ),
      body: Container(child: Image.network(stadium.stadium_cover)),
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
