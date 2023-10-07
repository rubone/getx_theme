import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_theme/theme/theme_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController(context: context));
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Theme'),
        actions: [
          GetBuilder<ThemeController>(
            builder: (controller) => IconButton(
                icon: Icon(
                  controller.isDarkMode ? Icons.light_mode : Icons.dark_mode,
                ),
                onPressed: () => controller.toggleDarkMode()),
          ),
        ],
      ),
    );
  }
}
