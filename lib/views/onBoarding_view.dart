import 'package:coffee_shop/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(

          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black45 , BlendMode.darken),
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Spacer(flex: 2),
            Text(
              'Coffee Shop',

              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 32,
                inherit: true,
              ),
            ),
            Spacer(flex: 8),
            Text(
              'Feeling Low? Take A Sip of Coffee',
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(flex: 1),
            ElevatedButton(
              onPressed: () {
                Get.to(HomeView());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(width * 0.5, height * 0.06),
              ),
              child: Text(
                'Get Start',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
