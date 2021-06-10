import 'package:flutter/material.dart';

import './detail_screen.dart';

//
import 'package:plab_first_project/models/Stadium.dart';


/*

  DetailScreen으로 id만 전달하고
  DetailScreen에서 /api/v2/stadium-groups/{id}/ 를 호출하는 방식으로 변경하세요
  /api/v2/stadium-groups/{id}/ 는 Stadium.dart에 메소드로 만들어 호출하면 됩니다


  요약
  - MainScreen에서 List 호출
  - DetailScreen에서 Detail 호출

*/

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    return FutureBuilder<List<Stadium>>(
        future: Stadium.fetchStadiums(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Stadium stadium = snapshot.data[0];
            return Scaffold(
              body: ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${snapshot.data[index].name}'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailScreen(snapshot.data[index])));
                    },
                  );
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          return CircularProgressIndicator();
        });
  }
}
