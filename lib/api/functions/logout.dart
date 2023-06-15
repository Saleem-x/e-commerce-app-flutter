import 'package:ecommerce_app/screens/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

logout(BuildContext context) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.clear();
  // ignore: use_build_context_synchronously
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const SplashSCreen(),
      ),
      (route) => false);
}
