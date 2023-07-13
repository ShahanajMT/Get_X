import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/controllers/tap_controllers.dart';
import 'package:getx2/pages/first_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //! debpendency injection
    TapController controller = Get.put(TapController());
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! UI Changes
            GetBuilder<TapController>(
              builder: (_) {
                return CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text(controller.x.toString()),
                );
              },
            ),
            InkWell(
              onTap: () {
                controller.incrementX();
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                ),
                //color: Colors.blueAccent,
                child: const Center(
                  child: Text(
                    "Tap",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Get.to(() => const FirstPage());
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                ),
                //color: Colors.blueAccent,
                child: const Center(
                  child: Text(
                    "Go to Page",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                ),
                //color: Colors.blueAccent,
                child: const Center(
                  child: Text(
                    "Tap",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                ),
                //color: Colors.blueAccent,
                child: const Center(
                  child: Text(
                    "Tap",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
