import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/user_controller.dart';
import 'package:flutter_getx/models/user.dart';
import 'package:get/get.dart';

class AddUserDialog extends StatelessWidget {
  AddUserDialog({super.key}) {
    nameController = TextEditingController();
    nationalCodeController = TextEditingController();
  }

  late TextEditingController nameController;
  late TextEditingController nationalCodeController;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(label: Text("نام")),
              controller: nameController,
            ),
            TextField(
              decoration: InputDecoration(label: Text("کد ملی")),
              controller: nationalCodeController,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                var controller = Get.find<UserController>();
                controller.addUser(User(nameController.text,
                    int.parse(nationalCodeController.text)));
                Get.back();
              },
              child: Text("ذخیره"),
            )
          ],
        ),
      ),
    );
  }
}
