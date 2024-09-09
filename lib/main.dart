import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/user_controller.dart';
import 'package:flutter_getx/views/home_page.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(
    () => UserController(),
    fenix: true,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
      locale: Locale("fa"),
    );
  }
}
