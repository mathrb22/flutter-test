import 'dart:convert';
import '../model/model.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class ApiClient {
  final http.Client httpClient;

  ApiClient({required this.httpClient});

  getAll() async {
    try {
      var response = await httpClient
          .get(Uri.https('jsonplaceholder.typicode.com', '/posts'));
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<PostModel> listMyModel =
            jsonResponse.map((model) => PostModel.fromJson(model)).toList();
        return listMyModel;
      } else
        print('erro');
    } catch (_) {
      print(_);
    }
  }
}
