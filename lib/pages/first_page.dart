import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/controllers/tap_controllers.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(
              builder: (_) {
                return CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 50,
              child: Text(
                controller.x.toString(),
              ),
            );
              },
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                controller.decrementX();
              },
              child: const Text('Substract'),
            ),
          ],
        ),
      ),
    );
  }
}
