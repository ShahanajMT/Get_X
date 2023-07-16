import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'helper/init_controller.dart' as di;
import 'package:getx2/pages/my_homePage.dart';





Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await  di.init();
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}