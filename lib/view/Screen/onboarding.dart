import 'package:ecommerce/controller/onBoarding_Controller.dart';
import 'package:flutter/material.dart';
import '../Widget/OnBoarding/Custom_Slider.dart';
import '../Widget/OnBoarding/Custom_button.dart';
import '../Widget/OnBoarding/dotcontroller.dart';
import 'package:get/get.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(onBoardingControllerImp());
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const Expanded(
            flex: 2,
            child: CustomSlider(),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: const [
                  DotController(),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  CustomButton(),
                ],
              ))
        ],
      ),
    ));
  }
}
