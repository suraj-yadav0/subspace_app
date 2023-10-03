import 'dart:developer' as log;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:subspace_app/models/category_model.dart';

void showMessage(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

 fetchBlogs() async {
   String url = 'https://intent-kit-16.hasura.app/api/rest/blogs';
   String adminSecret = '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';
 final response = await http.get(Uri.parse(url));
 if(response.statusCode == 200){
  var json = response.body;
 return articleModelFromJson(json);
 }
  // try {
  //   final response = await http.get(Uri.parse(url), headers: {
  //     'x-hasura-admin-secret': adminSecret,
  //   });

  //   if (response.statusCode == 200) {
  //     // Request successful, handle the response data here
  //     print('Response data: ${response.body}');
  //   } else {
  //     // Request failed
  //     print('Request failed with status code: ${response.statusCode}');
  //      print('Response data: ${response.body}');
  //    // log(response.body.toString());
  //   }
  // } catch (e) {
  //   // Handle any errors that occurred during the request
  // //  log(e.toString());
  //  print('Error: $e');
  // }
}

//  main() {
//   fetchBlogs();
//   //id,image,title
// }
