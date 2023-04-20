import 'package:ecommerce/core/constant/routesName.dart';
import 'package:ecommerce/view/Screen/auth/Login_Page.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

Map<String, Widget Function(BuildContext)> route = {
  AppRoute.login: (context) => const LoginPage(),
};
