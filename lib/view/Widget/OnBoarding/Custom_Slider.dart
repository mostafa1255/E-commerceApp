import 'package:ecommerce/controller/onBoarding_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/App_Colors.dart';
import '../../../data/datasource/Static/static.dart';

class CustomSlider extends GetView<onBoardingControllerImp> {
  const CustomSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: OnBoardingList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Text(
              OnBoardingList[index].title!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 85,
            ),
            Image.asset(
              OnBoardingList[index].image!,
              width: 200,
              height: 230,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                OnBoardingList[index].body!,
                textAlign: TextAlign.center,
                style: const TextStyle(height: 1.5, color: AppColor.grey),
              ),
            ),
          ],
        );
      },
    );
  }
}
