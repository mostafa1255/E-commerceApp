import 'package:ecommerce/data/datasource/Static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class onBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class onBoardingControllerImp extends onBoardingController {
  late PageController pageController;

  int cunrrentPage = 0;

  @override
  next() {
    cunrrentPage++;

    if (cunrrentPage > OnBoardingList.length - 1) {
      print('Login');
    }

    pageController.animateToPage(cunrrentPage,
        duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int index) {
    cunrrentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
