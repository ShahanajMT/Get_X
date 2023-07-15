import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/controllers/tap_controllers.dart';
import 'package:getx2/pages/my_homePage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 50,
            child: Text(controller.x.toString()),
          ),
          const Spacer(),
          ElevatedButton.icon(
            onPressed: () {
              Get.to(
                () => const Home(),
              );
            },
            icon: const Icon(Icons.home),
            label: const Text('Home'),
          ),
        ],
      ),
    );
  }
}
