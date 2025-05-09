import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/cart_controller.dart';

class CartView extends StatelessWidget {
  const CartView({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find();

    return Scaffold(
      backgroundColor: const Color(0xFF212325),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white38,
              ),
            ),
            SizedBox(height: height * 0.02),
            Text(
              'Your Cart',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Obx(() {
                if (cartController.coffee.isEmpty) {
                  return const Center(
                    child: Text(
                      'Your cart is empty!',
                      style: TextStyle(color: Colors.white38, fontSize: 18),
                    ),
                  );
                }

                return ListView.builder(
                  itemCount: cartController.coffee.length,

                  padding: EdgeInsets.only(top: 50),
                  itemExtent: height * 0.1,
                  itemBuilder: (context, index) {
                    final item = cartController.coffee[index];
                    return ListTile(
                      leading: Image.asset(item.image, width: width * 0.2),
                      title: Text(
                        item.name,
                        style: const TextStyle(color: Colors.white),
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.remove_circle,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          cartController.removeFromCart(index);
                        },
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
