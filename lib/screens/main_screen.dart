import 'package:flutter/material.dart';

//
import 'package:plab_first_project/models/Stadium.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text('메인 페이지입니다'),
      //     onPressed: () {
      //       // Named route를 사용하여 두 번째 화면으로 전환합니다.
      //       Navigator.pushNamed(context, '/detail');
      //     },
      //   ),
      // ),
      body: MainListExample(),
    );
  }
}


class MainListExample extends StatefulWidget {
  
  @override
  _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainListExample> {

  @override
  initState() {
    //초기화
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Stadium>> (
      future: Stadium.fetchStadiums(),
      builder: (context, snapshot) {
      if (snapshot.hasData) {
        Stadium stadium = snapshot.data[0];
        return Center(
          child: Text(stadium.name),
          //응답 받은 데이터로 UI 그리기
        );
      }

      return CircularProgressIndicator();
      }
    );
  }
}
