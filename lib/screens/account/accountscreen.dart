import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
        Container(
          width: size.width * double.infinity,
          height: size.height * 0.4,
          decoration: const BoxDecoration(color: Colors.blue),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  child: ClipOval(
                    child: SizedBox.fromSize(
                        size: const Size.fromRadius(60),
                        child: Image.asset(
                          'assets/images/FILA Logo.jpg',
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const Text(
                  'Username',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
        Expanded(child: ListView())
      ]),
    );
  }
}
