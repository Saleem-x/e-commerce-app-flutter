import 'package:ecommerce_app/api/functions/createuser.dart';
import 'package:ecommerce_app/bloc/splashscreen/splashscreen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SplashSCreen extends StatelessWidget {
  const SplashSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SplashscreenBloc>(context)
        .add(CheckUser(token: token, context: context));
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Lottie.asset('assets/animations/splashscreenpaperplane.json')
      ]),
    );
  }
}
