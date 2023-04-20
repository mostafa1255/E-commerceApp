import 'package:ecommerce/controller/onBoarding_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/App_Colors.dart';

class CustomButton extends GetView<onBoardingControllerImp> {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          controller.next();
        },
        child: Text('Continue'),
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
          backgroundColor: const MaterialStatePropertyAll(
            AppColor.PrimaryColor,
          ),
          minimumSize: MaterialStateProperty.all(Size(200, 50)),
        ));
  }
}
