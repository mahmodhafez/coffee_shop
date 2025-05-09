import 'package:coffee_shop/controller/cart_controller.dart';
import 'package:coffee_shop/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductView extends StatelessWidget {
  const ProductView({
    super.key,
    required this.name,
    required this.image,
    required this.width,
    required this.height,
  });

  final String name;
  final String image;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final CounterController counter = CounterController();
    final CartController cartController = Get.find<CartController>();
    return Scaffold(
      backgroundColor: Color(0xFF212325),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white38),
            ),
            SizedBox(height: height * 0.08),
            SizedBox(
              height: height * 0.4,
              child: Center(child: Image.asset(image, fit: BoxFit.fill)),
            ),
            SizedBox(height: height * 0.08),
            Text(
              'B E S T   C O F F E E',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white54,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: height * 0.02),
            Text(
              name,
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                Container(
                  width: width * 0.3,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFF212325),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white38,
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                      ),
                    ],
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          counter.increase();
                        },
                        icon: Icon(Icons.add),
                      ),
                      Obx(() => Text(counter.count.string)),
                      IconButton(
                        onPressed: () {
                          counter.decrease();
                        },
                        icon: Icon(Icons.minimize),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  '\$ 30.20',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Text(
              'Coffee is a major source of antioxidants in the \ndiet. It has many health benefits',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white54,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: height * 0.02),
            Text(
              'Volume :   60 ml',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(height: height * 0.03),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    cartController.addToCard(name: name, image: image);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),

                    backgroundColor: Colors.white12,
                    fixedSize: Size(width * 0.5, height * 0.06),
                  ),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),

                SizedBox(width: width * 0.2),
                ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    fixedSize: Size(width * 0.15, height * 0.06),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Colors.orange,
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
