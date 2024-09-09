import 'dart:convert';

import 'package:flutter_getx/models/user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UserController extends GetxController {
  late GetStorage box;
  UserController() {
    box = GetStorage();
    var usersJson = box.read("users");
    if (usersJson != null) {
      users = (usersJson["users"] as List)
          .map(
            (e) => User(e["name"], e["nationalCode"]),
          )
          .toList();
    }
  }
  List<User> users = [];
  void addUser(User user) {
    users.add(user);
    var js = {
      "users": users
          .map(
            (e) => e.toJson(),
          )
          .toList()
    };
    box.write("users", json.encode(js));
    box.save();
    update();
  }
}
