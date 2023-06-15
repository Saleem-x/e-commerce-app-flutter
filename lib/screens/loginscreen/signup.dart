import 'package:ecommerce_app/api/functions/createuser.dart';
import 'package:ecommerce_app/models/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final formkey = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final lnamecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final gendercontroller = TextEditingController();
  final passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.05),
                    Text(
                      'Hi!',
                      style: GoogleFonts.montserrat(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Create a New Account',
                      style: GoogleFonts.montserrat(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    SizedBox(height: size.height * 0.05),
                    TextWidget(
                      label: 'First Name',
                      controller: namecontroller,
                      type: TextInputType.name,
                      ispass: false,
                    ),
                    TextWidget(
                      label: 'Last Name',
                      controller: lnamecontroller,
                      type: TextInputType.text,
                      ispass: false,
                    ),
                    TextWidget(
                      label: 'E-mail',
                      controller: emailcontroller,
                      type: TextInputType.text,
                      ispass: false,
                    ),
                    TextWidget(
                      label: 'Phone',
                      controller: phonecontroller,
                      type: TextInputType.text,
                      ispass: false,
                    ),
                    TextWidget(
                      label: 'gender',
                      controller: gendercontroller,
                      type: TextInputType.text,
                      ispass: false,
                    ),
                    TextWidget(
                      label: 'password',
                      controller: passcontroller,
                      type: TextInputType.text,
                      ispass: true,
                    ),
                    SizedBox(height: size.height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width / 2,
                          child: MaterialButton(
                            color: Colors.blue,
                            onPressed: () async {
                              if (formkey.currentState!.validate()) {
                                formkey.currentState!.save();
                                final user = USerModel(
                                    fname: namecontroller.text,
                                    lname: lnamecontroller.text,
                                    email: emailcontroller.text,
                                    phone: phonecontroller.text,
                                    gender: gendercontroller.text,
                                    password: passcontroller.text);
                                await createuser(user);
                              }
                            },
                            child: const Text(
                              'SignUp',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class Textfieldcontainer extends StatelessWidget {
  const Textfieldcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // TextWidget(),
        // TextWidget(),
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType type;
  final bool ispass;
  const TextWidget({
    super.key,
    required this.label,
    required this.controller,
    required this.type,
    required this.ispass,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter $label';
            }
            return null;
          },
          controller: controller,
          keyboardType: type,
          obscureText: ispass,
          decoration: InputDecoration(
              label: Text(label),
              border: const OutlineInputBorder(),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue))),
        ),
      ),
    );
  }
}
