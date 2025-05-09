import 'package:coffee_shop/controller/bottom_naviogation_controller.dart';
import 'package:coffee_shop/models/coffee_model.dart';
import 'package:coffee_shop/widgets/coffee_Item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_view.dart';

class HomeView extends StatelessWidget {
  final BottomNavigationBarController bottomNavigationBarController =
      BottomNavigationBarController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    List<CoffeeModel> coffee = [
      CoffeeModel(name: 'Latte', image: 'assets/Latte.png'),
      CoffeeModel(name: 'Black Coffee', image: 'assets/Black Coffee.png'),
      CoffeeModel(name: 'Cold Coffee', image: 'assets/Cold Coffee.png'),
      CoffeeModel(name: 'Espersso', image: 'assets/Espresso.png'),
    ];

    return SafeArea(
      child: DefaultTabController(
        length: 3,

        child: Scaffold(
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              fixedColor: Colors.orange,
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconSize: 32,
              selectedFontSize: 0,
              unselectedItemColor: Colors.white38,
              type: BottomNavigationBarType.fixed,
              onTap: bottomNavigationBarController.changeIndex,
              currentIndex: bottomNavigationBarController.inSelected.value,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
              ],
            ),
          ),
          backgroundColor: Color(0xFF212325),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.sort, color: Colors.white38, size: 36),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Get.to(CartView(width: width, height: height));
                      },
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white38,
                        size: 36,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Text(
                  'It\'s a Great Day for Coffee',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: height * 0.02),

                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white12,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 22),
                    enabled: false,
                    hintText: 'Find your coffee',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white38,
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.white38),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),

                SizedBox(height: height * 0.02),
                TabBar(
                  labelColor: Colors.orange,
                  indicatorColor: Colors.orange,
                  dividerHeight: 0,
                  textScaler: TextScaler.linear(1.2),
                  // du 7agat el size w el shakl bs
                  labelPadding: EdgeInsets.symmetric(vertical: 10),

                  // msh mohmah
                  tabs: [
                    Text('Hot Coffee'),
                    Text('Cold Coffee'),
                    Text('Cappuccino'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: height * 0.0006,

                        children: [
                          CoffeeItem(
                            height: height,
                            width: width,
                            image: coffee[0].image,
                            name: coffee[0].name,
                          ),
                          CoffeeItem(
                            height: height,
                            width: width,
                            image: coffee[1].image,
                            name: coffee[1].name,
                          ),
                          CoffeeItem(
                            height: height,
                            width: width,
                            image: coffee[2].image,
                            name: coffee[2].name,
                          ),
                          CoffeeItem(
                            height: height,
                            width: width,
                            image: coffee[3].image,
                            name: coffee[3].name,
                          ),
                        ],
                      ),
                      GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: height * 0.0006,

                        children: [
                          CoffeeItem(
                            height: height,
                            width: width,
                            image: coffee[2].image,
                            name: coffee[2].name,
                          ),
                        ],
                      ),
                      GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: height * 0.0006,

                        children: [
                          CoffeeItem(
                            height: height,
                            width: width,
                            image: coffee[3].image,
                            name: coffee[3].name,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
