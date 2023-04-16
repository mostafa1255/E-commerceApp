import 'package:ecommerce/core/constant/App_Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../data/datasource/Static/static.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView.builder(
        itemCount: OnBoardingList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(
                OnBoardingList[index].title!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 85,
              ),
              Image.asset(
                OnBoardingList[index].image!,
                width: 200,
                height: 250,
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
      ),
    ));
  }
}
