import 'package:flutter/material.dart';

import './detail_screen.dart';

//
import 'package:plab_first_project/models/Stadium.dart';

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
