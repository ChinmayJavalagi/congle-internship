import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/categories.dart';

class CategoryController extends GetxController {
  final category = Rx<CategoryData>(CategoryData()); // Selected category

  void selectCategory(CategoryData c) {
    category.value = c ;
  }
}
