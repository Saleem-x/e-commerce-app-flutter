import 'package:ecommerce_app/api/functions/logout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: size.height / 3,
                width: size.width,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: size.height * 0.15,
                        width: size.width / 3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/The trick every Vans shopper needs to know.png'))),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Text(
                        'username',
                        style: GoogleFonts.montserrat(
                            fontSize: 17, color: Colors.white),
                      ),
                      Text(
                        'username@gmail.com',
                        style: GoogleFonts.montserrat(
                            fontSize: 15, color: Colors.white),
                      )
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                InkWell(
                  onTap: () {},
                  child: AccountScreenList(
                      size: size, icon: Icons.home_work, title: 'Address'),
                ),
                AccountScreenList(
                    size: size, icon: Icons.shopping_bag, title: 'orders'),
                AccountScreenList(
                    size: size,
                    icon: Icons.card_membership_rounded,
                    title: 'Address'),
                InkWell(
                  onTap: () {
                    Alert(
                      context: context,
                      type: AlertType.warning,
                      title: "Logout",
                      desc: "do you want to logout.",
                      buttons: [
                        DialogButton(
                          onPressed: () => logout(context),
                          width: 120,
                          child: const Text(
                            "Logout",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ).show();
                  },
                  child: AccountScreenList(
                      size: size, icon: Icons.logout, title: 'Logout'),
                ),
              ],
            ),
          ))
        ]),
      ),
    );
  }
}

// ignore: must_be_immutable
class AccountScreenList extends StatelessWidget {
  final IconData icon;
  final String title;
  var function;
  AccountScreenList(
      {super.key,
      required this.size,
      required this.icon,
      required this.title,
      this.function});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height * 0.07,
        width: size.width - 30,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(15)),
        child: Row(children: [
          const SizedBox(
            width: 20,
          ),
          Icon(icon),
          const SizedBox(
            width: 20,
          ),
          Text(title),
          const Spacer(),
          const Icon(CupertinoIcons.forward),
          const SizedBox(
            width: 10,
          )
        ]),
      ),
    );
  }
}
