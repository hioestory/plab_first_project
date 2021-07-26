import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//
import 'package:plab_first_project/models/post_naver.dart';

class DetailScreen extends StatelessWidget {
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
    return FutureBuilder<List<PostNaver>>(
        future: PostNaver.fetchPostNaver(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              backgroundColor: const Color(0xffFFEECB),
              body: SafeArea(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back),
                            iconSize: 30.0,
                          ),
                          Text(
                            'NAVER',
                            style: TextStyle(
                              fontSize: 32.0,
                              color: const Color(0xff2A7135),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          Container(width: 50.0),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white,
                        ),
                        child: ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin:
                                  EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 0.0),
                              width: 296,
                              height: 120,
                              child: Card(
                                color: const Color(0xffC4C4C4),
                                child: ListTile(
                                  title: Text('카테고리 : ' +
                                      snapshot.data[index].category),
                                  subtitle: Expanded(
                                    child: Text('제목 : ' +
                                        snapshot.data[index].title +
                                        '\n' +
                                        snapshot.data[index].author),
                                  ),
                                  isThreeLine: true,
                                  // dense: true,
                                  onTap: () {
                                    _launchURL();
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          return CircularProgressIndicator();
        });
  }
}

_launchURL() async {
  const url = 'https://m.blog.naver.com/17kimdg/222406852806';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


// import 'package:flutter/material.dart';
// import '../models/naver.dart';

// class DetailScreen extends StatelessWidget {
//   final Naver naver;
//   DetailScreen(this.naver);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffFFEECB),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   icon: const Icon(Icons.arrow_back),
//                   iconSize: 55.0,
//                 ),
//                 Text('NAVER', style: TextStyle(fontSize: 32.0)),
//                 Text('NAVER'),
//               ],
//             ),
//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.white, width: 1.0),
//                   borderRadius: BorderRadius.all(Radius.circular(30)),
//                   color: Colors.white,
//                 ),
//                 margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
