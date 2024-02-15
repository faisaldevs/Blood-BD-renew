import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../../../models/DropdownModel.dart';

class DropDownButtonController extends GetxController {
  var selected;

  Future<List<DropdownModel>> getPost() async {
    try {
      final response =
          await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

      final body = json.decode(response.body) as List;

      if (response.statusCode == 200) {
        if (kDebugMode) {
          print(response.statusCode.toString());
        }

        return body.map((e) {
          final map = e as Map<String, dynamic>;
          return DropdownModel(
            userId: map["userId"],
            id: map["id"],
            title: map["title"],
            body: map["body"],
          );
        }).toList();
      }
    } catch (e) {
      if (kDebugMode) {
        print("object");
      }
    }

    throw Exception("");
  }

  onChange(bool value) {
    selected = value;
  }
}
