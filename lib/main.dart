import 'package:congle_internship/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/category_controller.dart';
import 'controllers/club_profile_controller.dart';
import 'controllers/home_controller.dart';
import 'controllers/human_profile_controller.dart';

void main() {
  runApp(GetMaterialApp(
    home: HomeScreen(),
    initialBinding: InitialBinding(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'DMSans',
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(CategoryController());
    Get.put(HumanProfileController());
    Get.put(ClubProfileController());
  }
}
