import 'package:flutter_getx/models/user.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  List<User> users = [];
  void addUser(User user) {
    users.add(user);
    update();
  }
}
