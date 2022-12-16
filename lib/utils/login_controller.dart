import 'dart:convert';
// import 'dart:js';

import 'package:dating_app/utils/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {

  final usernameOrEmailController = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> loginWithEmail() async {
    var headers = {'Content-Type': 'application/json'};

    try {


      var url = Uri.parse(
          ApiEndPoints.baseUrl + ApiEndPoints.authEndPoints.login
      );
      Map body = {
        'email': usernameOrEmailController.text.trim(),
      };

      http.Response response =
      await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['code'] == 0) {
          var token = json['data']['Token'];
          print(token);
          final SharedPreferences? prefs = await _prefs;

          await prefs?.setString('token', token);
          usernameOrEmailController.clear();

        } else {
          throw jsonDecode(response.body)["message"] ?? "Unknown Error Occurred";
        }
      } else {
        throw jsonDecode(response.body)["Message"] ?? "Unknown Error Occurred";
      }
    } catch (e) {
      Get.back();
      showDialog(context: Get.context!, builder: (context) {
        return SimpleDialog(
          title: const Text('Error'),
          contentPadding: const EdgeInsets.all(20),
          children: [Text(e.toString())],
        );
      });
    }
  }
}