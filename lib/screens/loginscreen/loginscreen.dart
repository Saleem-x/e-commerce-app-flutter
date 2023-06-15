import 'package:ecommerce_app/api/functions/createuser.dart';
import 'package:ecommerce_app/models/usermodel.dart';
import 'package:ecommerce_app/screens/loginscreen/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final formkey = GlobalKey<FormState>();
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                child: Lottie.asset('assets/animations/loginscreen.json'),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Login',
                  style: GoogleFonts.montserrat(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )
              ]),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextWidget(
                  label: 'Username',
                  controller: usernamecontroller,
                  type: TextInputType.text,
                  ispass: false),
              TextWidget(
                  label: 'PassWord',
                  controller: passwordcontroller,
                  type: TextInputType.text,
                  ispass: true),
              SizedBox(
                width: size.width / 2,
                child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () async {
                    if (formkey.currentState!.validate()) {
                      final user = LoginModel(
                          username: usernamecontroller.text,
                          password: passwordcontroller.text);
                      await login(user, context);
                    }
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.12,
              ),
              SizedBox(
                width: size.width - 100,
                child: const Divider(
                  thickness: 2,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) {
                        return SignupScreen();
                      },
                    ));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont You have a Aaccount?',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'SignUp!',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
