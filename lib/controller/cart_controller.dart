import 'package:coffee_shop/models/coffee_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList coffee = [].obs;

  void addToCard({required String name, required String image}) {
    CoffeeModel coffeeModel = CoffeeModel(name: name, image: image);
    coffee.add(coffeeModel);
  }

  void removeFromCart(int index) {
    coffee.removeAt(index);
  }
}
