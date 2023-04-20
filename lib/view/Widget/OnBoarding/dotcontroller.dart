import 'package:ecommerce/controller/onBoarding_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/App_Colors.dart';
import '../../../data/datasource/Static/static.dart';

class DotController extends StatelessWidget {
  const DotController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<onBoardingControllerImp>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(OnBoardingList.length, (index) {
            return AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              width: controller.cunrrentPage == index ? 20 : 6,
              height: 6,
              duration: const Duration(milliseconds: 800),
              decoration: BoxDecoration(
                  color: controller.cunrrentPage == index
                      ? Colors.green
                      : AppColor.PrimaryColor,
                  borderRadius: BorderRadius.circular(10)),
            );
          })
        ],
      );
    });
  }
}
