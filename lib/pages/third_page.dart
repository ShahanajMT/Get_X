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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Container(
              height: 100,
              width: double.infinity,
              //backgroundColor: Colors.red,
              //radius: 50,
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                "Y value ${controller.y.toString()}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ),),
            const SizedBox(height: 20,),
          InkWell(
            onTap: () {
              Get.to(() => const Home(),);
            },
            child: Container(
              height: 100,
              width: double.infinity,
              //backgroundColor: Colors.red,
              //radius: 50,
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                "X value ${controller.x.toString()}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              //Get.to(() => const Home(),);
              Get.find<TapController>().incrementY();
              //controller.incrementY();
            
            },
            child: Container(
              height: 100,
              width: double.infinity,
              //backgroundColor: Colors.red,
              //radius: 50,
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow,
              ),
              child: const Center(
                child: Text(
                "Increase Y",
                  style:  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
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
