import 'package:ecommerce_app/screens/loginscreen/loginscreen.dart';
import 'package:ecommerce_app/screens/loginscreen/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'welcome',
                  style: GoogleFonts.montserrat(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.09,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
                child: Lottie.asset('assets/animations/welcomeanimation.json',
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: size.height * 0.09,
          ),
          const Text(
            'Hello',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                textAlign: TextAlign.center,
                ''' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'''),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SizedBox(
            width: size.width / 2,
            child: MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return SignupScreen();
                  },
                ));
              },
              child: const Text(
                'SignUp',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: size.width / 3,
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ));
              },
              child: const Text(
                'LogIn',
                style: TextStyle(fontSize: 17),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
