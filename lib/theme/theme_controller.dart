import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ThemeController extends GetxController {
  ThemeController({required this.context});

  BuildContext context;
  late bool isDarkMode;

  @override
  void onInit() {
    isDarkMode = Theme.of(context).brightness == Brightness.dark;
    super.onInit();
  }

  void toggleDarkMode() {
    isDarkMode = !isDarkMode;
    if (isDarkMode) {
      Get.changeTheme(ThemeData.dark());
    } else {
      Get.changeTheme(ThemeData.light());
    }
    update();
  }
}
