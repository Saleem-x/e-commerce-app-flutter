import 'package:ecommerce_app/controllers/bottomappbarcontroller.dart';
import 'package:ecommerce_app/screens/account/accountscreen.dart';
import 'package:ecommerce_app/screens/cart/cartscreen.dart';
import 'package:ecommerce_app/screens/homescreen/homescreen.dart';
import 'package:ecommerce_app/screens/searchscreen/searchscreen.dart';
import 'package:ecommerce_app/widgets/shoeslistwidget.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:get/get.dart';

class BottomAppbarwidget extends StatelessWidget {
  BottomAppbarwidget({super.key});

  final Maincontroller controller = Get.put(Maincontroller());

  @override
  Widget build(BuildContext context) {
    // List pages = [HomeScreen(), SearchPage(), Inputscreen()];
    return Scaffold(
      // backgroundColor: Colors.cyan,
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          child: Obx(
            () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  bottomappbaritems(context,
                      icon: Icons.home, label: 'home', page: 0),
                  bottomappbaritems(context,
                      icon: Icons.search, label: 'Search', page: 1),
                  bottomappbaritems(context,
                      icon: Icons.shopping_cart_outlined,
                      label: 'Cart',
                      page: 2),
                  bottomappbaritems(context,
                      icon: Icons.person, label: 'Account', page: 3),
                ]),
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          PageView(
              onPageChanged: controller.animatetopage,
              controller: controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                HomeScreen(),
                SearchScreen(),
                CartScreen(),
                AccountScreen()
              ]),
        ],
      ),
    );
  }

  Widget bottomappbaritems(BuildContext context,
      {required icon, required, page, required label}) {
    return ZoomTapAnimation(
      onTap: () {
        controller.changepage(page);
      },
      child: Container(
        width: 70,
        height: 40,
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: controller.currentpage.value == page
                  ? Colors.white
                  : Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(
                color: controller.currentpage.value == page
                    ? Colors.white
                    : Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
