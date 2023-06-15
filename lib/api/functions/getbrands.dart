import 'dart:convert';
import 'dart:developer';
import 'package:ecommerce_app/bloc/brands/brands_bloc.dart';
import 'package:ecommerce_app/models/braands/brand_model/brand_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

List<BrandModel> brands = [];
getbrands(BuildContext context) async {
  // var token = sharedprfs.get('login');
  final response =
      await http.get(Uri.parse('https://test.strideave.shop/brand'));
  if (response.statusCode == 200) {
    // List<Map<String, dynamic>> responseList =
    //     List<Map<String, dynamic>>.from(jsonDecode(response.body));
    brands = List<BrandModel>.from(
        jsonDecode(response.body).map((model) => BrandModel.fromJson(model)));
    log(brands[0].name!);
    // ignore: use_build_context_synchronously
    BlocProvider.of<BrandsBloc>(context).add(GetBrands(brands: brands));
    return brands;
  } else {
    log(response.statusCode.toString());
  }
}
