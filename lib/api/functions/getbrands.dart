import 'dart:convert';
import 'dart:developer';

import 'package:ecommerce_app/models/braands/brand_model/brand_model.dart';
import 'package:http/http.dart' as http;

getbrands() async {
  // var token = sharedprfs.get('login');
  final response =
      await http.get(Uri.parse('https://test.strideave.shop/brand'));
  if (response.statusCode == 200) {
    List<Map<String, dynamic>> responseList =
        List<Map<String, dynamic>>.from(jsonDecode(response.body));
    final List<BrandModel> brands = List<BrandModel>.from(
        jsonDecode(response.body).map((model) => BrandModel.fromJson(model)));
  } else {
    log(response.statusCode.toString());
  }
}
