import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect.dart';

import '../views/product_view.dart';

class CoffeeItem extends StatelessWidget {
  const CoffeeItem({
    super.key,
    required this.height,
    required this.width,
    required this.image,
    required this.name,
  });

  final double height;
  final double width;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        Get.to(ProductView(name:name , image: image, width: width, height: height,));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        alignment: Alignment.bottomLeft,

        decoration: BoxDecoration(
          color: Color(0xFF212325),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.black26, spreadRadius: 1, blurRadius: 10),
          ],
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(image)),
            Text(name),
            Text(
              'Best Coffee',
              style: TextStyle(
                color: Colors.white38,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                Text(
                  '\$30',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Spacer(),
                SizedBox(
                  height: height * 0.03,
                  width: width * 0.08,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.orange,
                      padding:
                          EdgeInsets.zero, // very important اتفشخت بسببها شوية
                    ),
                    child: Icon(Icons.add, color: Colors.white),
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

//IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.add, color: Colors.white),
//                 style: IconButton.styleFrom(backgroundColor: Colors.orange),
//               ),
