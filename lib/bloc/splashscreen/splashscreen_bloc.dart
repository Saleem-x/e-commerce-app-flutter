import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/api/functions/createuser.dart';
import 'package:ecommerce_app/screens/loginscreen/welcomescreen.dart';
import 'package:ecommerce_app/widgets/bottomappbarwidget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splashscreen_event.dart';
part 'splashscreen_state.dart';

class SplashscreenBloc extends Bloc<SplashscreenEvent, SplashScreenState> {
  SplashscreenBloc() : super(SplashScreenInitial(token)) {
    on<CheckUser>((event, emit) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var userin = prefs.getString('login');
      if (userin == null) {
        await Future.delayed(const Duration(seconds: 3));
        // ignore: use_build_context_synchronously
        Navigator.of(event.context).push(MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        ));
      } else {
        await Future.delayed(const Duration(seconds: 3));
        // ignore: use_build_context_synchronously
        Navigator.pushAndRemoveUntil(
            event.context,
            MaterialPageRoute(
              builder: (context) => BottomAppbarwidget(),
            ),
            (route) => false);
      }
    });
  }
}
