import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:twitter/model/post_model.dart';
import 'package:twitter/utils/endpoints.dart';

class PostServices {
  static getposts() async {
    var uri = Uri.parse(ApiEndpoints.baseUrl + ApiEndpoints.postEndpoint);
    try {
      http.Response response = await http.get(uri);
      var data = response.body.toString();
      if (response.statusCode == 200) {
        List<PostModel> model = postModelFromJson(data);
        return model;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
