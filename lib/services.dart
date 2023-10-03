import 'package:flutter/material.dart';
import 'package:subspace_app/models/category_model.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  Future<ArticleModel> getPosts() async {
var client = http.Client();
var uri = Uri.parse("https://intent-kit-16.hasura.app/api/rest/blogs");
var response  = await client.get(uri);

if(response.statusCode == 200) {
  var json = response.body;
  return  articleModelFromJson(json);
}

throw();

  }
}