import 'package:ecommerce_app/bloc/bottomnavbar/bottomnavbar_bloc.dart';
import 'package:ecommerce_app/controllers/bottomappbarcontroller.dart';
import 'package:ecommerce_app/screens/account/accountscreen.dart';
import 'package:ecommerce_app/screens/cart/cartscreen.dart';
import 'package:ecommerce_app/screens/homescreen/homescreen.dart';
import 'package:ecommerce_app/screens/searchscreen/searchscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class BottomAppbarwidget extends StatelessWidget {
  const BottomAppbarwidget({super.key});

  // final Maincontroller controller = Get.put(Maincontroller());

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BottomnavbarBloc>(context).add(Changepage(index: 0));
    PageController controller = PageController();
    // List pages = [HomeScreen(), SearchPage(), Inputscreen()];
    return Scaffold(
      // backgroundColor: Colors.cyan,
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          child: BlocBuilder<BottomnavbarBloc, BottomnavbarState>(
            builder: (context, state) {
              return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    bottomappbaritems(context,
                        icon: Icons.home,
                        label: 'home',
                        page: 0,
                        controller: controller),
                    bottomappbaritems(context,
                        icon: Icons.search,
                        label: 'Search',
                        page: 1,
                        controller: controller),
                    bottomappbaritems(context,
                        icon: Icons.shopping_cart_outlined,
                        label: 'Cart',
                        page: 2,
                        controller: controller),
                    bottomappbaritems(context,
                        icon: Icons.person,
                        label: 'Account',
                        page: 3,
                        controller: controller),
                  ]);
            },
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          BlocBuilder<BottomnavbarBloc, BottomnavbarState>(
            builder: (context, state) {
              return PageView(
                  // onPageChanged: controller.animatetopage,
                  // controller: controller.pageControllser,
                  onPageChanged: (value) {
                    controller.jumpToPage(value);
                    BlocProvider.of<BottomnavbarBloc>(context)
                        .add(Changepage(index: value));
                  },
                  controller: controller,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    HomeScreen(),
                    SearchScreen(),
                    CartScreen(),
                    AccountScreen()
                  ]);
            },
          ),
        ],
      ),
    );
  }

  Widget bottomappbaritems(BuildContext context,
      {required icon,
      required,
      page,
      required label,
      required PageController controller}) {
    return BlocBuilder<BottomnavbarBloc, BottomnavbarState>(
      builder: (context, state) {
        return ZoomTapAnimation(
          onTap: () {
            // controller.changepage(page);

            controller.jumpToPage(page);
            BlocProvider.of<BottomnavbarBloc>(context)
                .add(Changepage(index: page));
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
                  color: state.index == page ? Colors.white : Colors.grey,
                ),
                Text(
                  label,
                  style: TextStyle(
                    color: state.index == page ? Colors.white : Colors.grey,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
