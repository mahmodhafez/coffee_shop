import 'package:get/get.dart';

class CounterController extends GetxController {
  Rx<int> count = 0.obs;

  void increase() {
    count.value++;
  }

  void decrease() {
   if(count >= 1){
     count.value--;
   }

  }
}
