import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:plab_first_project/models/naver.dart';
import 'package:plab_first_project/screens/main_screen_naver.dart';

class PostNaver {
  final String author;
  final String title;
  final String category;
  final String url;

  PostNaver({this.author, this.title, this.category, this.url});

  static Future<List<PostNaver>> fetchPostNaver() async {
    var keyword = '풋살';

    //요청주소
    String url = "http://letsego.site/api/v1/post-naver/?search=$keyword";

    //요청 조건을 보낼 때
    Map<String, String> headers = {};

    //응답
    final response = await http.get(url, headers: headers);
    print(response.statusCode);

    //응답이 성공했을 경우
    if (response.statusCode == 200) {
      //한글 디코딩
      final decodeData = utf8.decode(response.bodyBytes);

      //json 디코딩
      Map obj = jsonDecode(decodeData);

      //json to list
      List list = obj['results'];
      print(list);

      //list to model
      var stadiumList =
          list.map((element) => PostNaver.fromJson(element)).toList();

      //응답
      return stadiumList;
    }
  }

  factory PostNaver.fromJson(Map<String, dynamic> json) {
    return PostNaver(
        author: json['author'],
        title: json['title'],
        category: json['category'],
        url: json['url']);
  }
}
