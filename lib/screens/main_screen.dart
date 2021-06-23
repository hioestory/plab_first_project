import 'package:flutter/material.dart';
import './detail_screen.dart';
//
import 'package:plab_first_project/models/Instagram.dart';

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
    return FutureBuilder<List<Instagram>>(
        future: Instagram.fetchStadiums(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Instagram instagram = snapshot.data[0];
            return Scaffold(
                body: SafeArea(
              child: Container(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
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
                                  child: Text(
                                'NAVER',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: 'Roboto'),
                              )),
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
                                          color: Color.fromRGBO(
                                              176, 176, 176, 100)))),
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
                        instagram.tag,
                        textAlign: TextAlign.center,
                      )),
                      width: double.infinity,
                      height: 183,
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF9BB3C)),
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
                                '풋살',
                                textAlign: TextAlign.center,
                              )),
                              width: double.infinity,
                              height: 233,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 3, color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffF16623),
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
                                  '축구',
                                  textAlign: TextAlign.center,
                                )),
                                width: double.infinity,
                                height: 233,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 3, color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xff308D57),
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
                    Container(
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              child: Center(
                                  child: Text(
                                '여자풋살',
                                textAlign: TextAlign.center,
                              )),
                              width: double.infinity,
                              height: 209,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 3, color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff934BC7),
                              ), //BoxDecoration
                            ), //Container
                          ), //Flexible
                          SizedBox(
                            width: 5,
                          ), //SizedBox
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                                child: Center(
                                    child: Text(
                                  '여자축구',
                                  textAlign: TextAlign.center,
                                )),
                                width: double.infinity,
                                height: 182,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 3, color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffF9BB3c),
                                ) //BoxDecoration
                                ), //Container
                          ),
                          SizedBox(
                            width: 5,
                          ), //SizedBox
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                                child: Center(
                                    child: Text(
                                  '축스타그램',
                                  textAlign: TextAlign.center,
                                )),
                                width: double.infinity,
                                height: 156,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 3, color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffFC5E01),
                                ) //BoxDecoration
                                ), //Container
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              child: Center(
                                  child: Text(
                                '혼자',
                                textAlign: TextAlign.center,
                              )),
                              width: 101,
                              height: 67,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 3, color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff308D57),
                              ), //BoxDecoration
                            ),
                          ), //Flexible
                          SizedBox(
                            width: 5,
                          ), //SizedBox
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                                child: Center(
                                    child: Text(
                                  '일상',
                                  textAlign: TextAlign.center,
                                )),
                                width: 101,
                                height: 99,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 3, color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xff5C77FF),
                                )),
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
                                  '풋살스타그램',
                                  textAlign: TextAlign.center,
                                )),
                                width: 101,
                                height: 120,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 3, color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xff934BC7),
                                )),
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Flexible(
                        flex: 5,
                        fit: FlexFit.tight,
                        child: Center(
                            child: Text(
                          '일상',
                          textAlign: TextAlign.center,
                        )),
                      ),
                      width: double.infinity,
                      height: 52,
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF9BB3C)),
                    ),
                  ], mainAxisAlignment: MainAxisAlignment.end),
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
