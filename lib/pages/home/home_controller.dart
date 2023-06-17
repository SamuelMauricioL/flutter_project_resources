import 'package:get/get.dart';

class HomeController extends GetxController {
  final _counter = 0.obs;

  int get counter => _counter.value;

  void add() => _counter.value++;
  void dismis() => _counter.value--;

  void goToProduct() => Get.toNamed('/product');
}
