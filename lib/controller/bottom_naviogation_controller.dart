import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController{
   RxInt inSelected = 0.obs;

   void changeIndex(int index) {
      inSelected.value = index;
   }

}