import 'package:http/http.dart' as http;
import 'dart:convert';

class Naver {
  final int count;
  final String tag;

  Naver({
    this.count,
    this.tag,
  });

  static Future<List<Naver>> fetchNaver() async {
    //요청주소
    String url = "http://letsego.site/api/v1/post-naver-tag-most/";

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
      var stadiumList = list.map((element) => Naver.fromJson(element)).toList();

      //응답
      return stadiumList;
    }
  }

  factory Naver.fromJson(Map<String, dynamic> json) {
    return Naver(count: json['count'], tag: json['tag']);
  }
}
