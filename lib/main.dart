import 'package:coffee_shop/views/onBoarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/cart_controller.dart';

void main(){
  runApp(MyApp());
  Get.put(CartController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      home: OnboardingView(),
      debugShowCheckedModeBanner: false,

    );
  }
}

