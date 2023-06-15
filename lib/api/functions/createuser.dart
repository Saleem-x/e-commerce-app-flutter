import 'dart:convert';
import 'dart:developer';

import 'package:ecommerce_app/models/token/token_model/token_model.dart';
import 'package:ecommerce_app/models/usermodel.dart';
import 'package:ecommerce_app/screens/homescreen/homescreen.dart';
import 'package:ecommerce_app/widgets/bottomappbarwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

createuser(USerModel data) async {
  final response = await http
      .post(Uri.parse('https://test.strideave.shop/auth/signup'), body: {
    'firstName': data.fname,
    'lastName': data.lname,
    'email': data.email,
    'phone': data.phone,
    'gender': data.gender,
    'password': data.password,
  });

  if (response.statusCode == 201) {
    token = response.body;
    log(token);
  } else {
    log(response.statusCode.toString());
  }
}

login(LoginModel data, BuildContext context) async {
  final response = await http.post(
    Uri.parse('https://test.strideave.shop/auth/login'),
    body: {
      'credential': data.username,
      'password': data.password,
    },
  );
  if (response.statusCode == 201) {
    Map<String, dynamic> json = jsonDecode(response.body);
    var tokenmodel = TokenModel.fromJson(json);
    token = tokenmodel.token!;
    log(json.toString());
    // log(json[token]);

    // ignore: use_build_context_synchronously
    saveLogin(context, token);
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => BottomAppbarwidget(),
        ),
        (route) => false);
  }
  log(response.statusCode.toString());
  // log(response.body);
}

var token = 'not-logged-in';

saveLogin(BuildContext context, var token) async {
  final SharedPreferences sharedprefs = await SharedPreferences.getInstance();
  await sharedprefs.setString('login', token);
}
