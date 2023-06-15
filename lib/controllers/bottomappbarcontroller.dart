import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Maincontroller extends GetxController {
  late PageController pageController;
  RxInt currentpage = 0.obs;

  void changepage(int page) {
    currentpage.value = page;
    pageController.jumpToPage(page);
  }

  void animatetopage(int page) {
    currentpage.value = page;
    pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
