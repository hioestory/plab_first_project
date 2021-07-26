import 'package:flutter/material.dart';
//
import 'package:plab_first_project/models/Instagram.dart';

class MainScreenInstagram extends StatelessWidget {
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
    return FutureBuilder<List<Instagram>>(
        future: Instagram.fetchInstagram(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
                body: SafeArea(
              child: Container(
                  color: const Color(0xFFF9ED),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xffFFFFFF),
                          ),
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                flex: 4,
                                fit: FlexFit.tight,
                                child: Container(
                                  child: Center(
                                    child: TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, '/main_naver'),
                                      child: Text(
                                        'NAVER',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 23,
                                          color: Color.fromRGBO(
                                              176, 176, 176, 100),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'RobotoLight',
                                        ),
                                      ),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height: 51,
                                  // decoration: BoxDecoration(
                                  //   border: Border.all(
                                  //       width: 6, color: Colors.black),
                                  //   borderRadius: BorderRadius.circular(20),
                                  //   color: const Color(0xffFFFFFF),
                                  // ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                flex: 4,
                                fit: FlexFit.tight,
                                child: Container(
                                  child: Center(
                                      child: Text('Instagram',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 25,
                                              fontWeight: FontWeight
                                                  .w700, // fontWeight 적용 왜 안 되는 거지?
                                              color: Colors.black))),
                                  width: double.infinity,
                                  height: 51,
                                  // decoration: BoxDecoration(
                                  //   border: Border.all(
                                  //       width: 6, color: Colors.black),
                                  //   borderRadius: BorderRadius.circular(20),
                                  //   color: const Color(0xffFFFFFF),
                                  // ),
                                ),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Center(
                              child: Text(
                            // 태그 1등
                            snapshot.data[0].tag,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 55,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          )),
                          width: double.infinity,
                          height: 183,
                          decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffFFCA08)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Container(
                                  child: Center(
                                      child: Text(
                                    // 태그 2등
                                    snapshot.data[1].tag,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 55,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto',
                                    ),
                                  )),
                                  width: double.infinity,
                                  height: 233,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff308D57),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                    child: Center(
                                        child: Text(
                                      // 태그 3등
                                      snapshot.data[2].tag,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 38,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto',
                                      ),
                                    )),
                                    width: double.infinity,
                                    height: 233,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 3, color: Colors.black),
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffF16623),
                                    )),
                              ),
                              // SizedBox(
                              //   width: 20,
                              // ),
                              // Flexible(
                              //   flex: 3,
                              //   fit: FlexFit.tight,
                              //   child: Container(
                              //       child: Center(
                              //           child: Text(
                              //         '할수있다',
                              //         textAlign: TextAlign.center,
                              //       )),
                              //       width: 69,
                              //       height: 230,
                              //       decoration: BoxDecoration(
                              //         border: Border.all(
                              //             width: 3, color: Colors.black),
                              //         borderRadius: BorderRadius.circular(10),
                              //         color: const Color(0xff5C77FF),
                              //       )),
                              // ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        // 구분
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Center(
                                            child: Text(
                                                // 태그 4등
                                                snapshot.data[3].tag,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 35,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Roboto',
                                                ))),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xff0076CE),
                                        ),
                                        width: double.infinity,
                                        height: 209,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Center(
                                            child: Text(
                                          // 7등
                                          snapshot.data[6].tag,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 21,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto',
                                          ),
                                        )),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xff308D57),
                                        ),
                                        width: double.infinity,
                                        height: 131,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: Flexible(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Center(
                                            child: Text(
                                          // 태그 5등
                                          snapshot.data[4].tag,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 32,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto',
                                          ),
                                        )),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xffFFCA08),
                                        ),
                                        width: double.infinity,
                                        height: 182,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Center(
                                            child: Text(
                                          // 8등
                                          snapshot.data[7].tag,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto',
                                          ),
                                        )),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xff8944B9),
                                        ),
                                        width: double.infinity,
                                        height: 104,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: Flexible(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Center(
                                            child: Text(
                                          // 태그 6등
                                          snapshot.data[5].tag,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 28,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto',
                                          ),
                                        )),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xff8944B9),
                                        ),
                                        width: double.infinity,
                                        height: 156,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Center(
                                            child: Text(
                                          // 9등
                                          snapshot.data[8].tag,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 29,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto',
                                          ),
                                        )),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xffF16623),
                                        ),
                                        width: double.infinity,
                                        height: 79,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Center(
                                            child: Text(
                                          // 10등
                                          snapshot.data[9].tag,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto',
                                          ),
                                        )),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xff0076CE),
                                        ),
                                        width: double.infinity,
                                        height: 52,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  )),
            ));
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          return CircularProgressIndicator();
        });
  }
}
