import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/user_controller.dart';
import 'package:flutter_getx/views/add_user_dialog.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.dialog(AddUserDialog());
        },
        child: const Icon(Icons.add),
      ),
      body: GetBuilder<UserController>(
        builder: (controller) {
          return Column(
            children: controller.users
                .map(
                  (user) => Card(
                    child: Row(
                      children: [
                        Text(user.name),
                        Text(user.nationalCode.toString()),
                      ],
                    ),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
