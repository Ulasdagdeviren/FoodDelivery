import 'package:flutter/material.dart';
import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/food/recommended_food_detail.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'helper/dependencies.dart'
    as dep; // bunu biz ekledik   await dep.init(); bunu yazmak için bağımlılıklarımızı buraya yüklmek için kullandık

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // bu sayede bağımlılıklarımızın doğru şekilde yüklendiğiden emini olacak ve yüklenene kadar bekleyecek
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
    );
  }
}
