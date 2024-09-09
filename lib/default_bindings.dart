import 'package:flutter_getx/controllers/user_controller.dart';
import 'package:get/get.dart';

class DefaultBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => UserController(),
      fenix: true,
    );
  }
}
