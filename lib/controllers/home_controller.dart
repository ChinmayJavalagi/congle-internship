import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  final tabIndex = RxInt(0);
  final categories = RxList<Category>([]);

  void fetchCategories() async {
    categories.value = (await getCategories())!;
  }

  getCategories() {}
}