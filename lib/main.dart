import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/eg2_slider.dart';
import 'package:get_x/home1.dart';
import 'package:get_x/home2.dart';
import 'package:get_x/laungage_change.dart';
import 'package:get_x/screen1.dart';
import 'package:get_x/screen2.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    print('Current Locale: ${Get.locale}');

    return GetMaterialApp(
      title: "Learn GetX",
      fallbackLocale: Locale('ur', 'PK'),
      locale: Locale('en', 'US'),
      translations: Languages(),
      theme: ThemeData(primarySwatch: Colors.blue),
      // ignore: avoid_print
      // print('Current Locale: ${Get.locale}');

      home: Eg2_Slider(),
      getPages: [
        GetPage(name: '/', page: () => Screen1()),
        GetPage(name: '/homeScreen', page: () => HomeScreen()),
        GetPage(name: '/screentwo', page: () => Screen2()),
      ],
    );
  }
}
