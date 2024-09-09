import 'package:flutter/material.dart';
import 'package:flutter_getx/default_bindings.dart';
import 'package:flutter_getx/views/home_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() {
  GetStorage.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      initialBinding: DefaultBindings(),
      locale: Locale("fa"),
    );
  }
}
