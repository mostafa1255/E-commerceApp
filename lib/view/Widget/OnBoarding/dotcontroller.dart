import 'package:flutter/material.dart';

import '../../../core/constant/App_Colors.dart';
import '../../../data/datasource/Static/static.dart';

class DotController extends StatelessWidget {
  const DotController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(OnBoardingList.length, (index) {
          return AnimatedContainer(
            margin: const EdgeInsets.only(right: 5),
            width: 6,
            height: 6,
            duration: const Duration(milliseconds: 800),
            decoration: BoxDecoration(
                color: AppColor.PrimaryColor,
                borderRadius: BorderRadius.circular(10)),
          );
        })
      ],
    );
  }
}
