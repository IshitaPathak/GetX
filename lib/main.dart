import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/home_screen.dart';
import 'package:get_x/screen1.dart';
import 'package:get_x/screen2.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Learn GetX",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Screen2(),
      getPages: [
        GetPage(name: '/', page: () => Screen1()),
        GetPage(name: '/homeScreen', page: () => HomeScreen()),
        GetPage(name: '/screentwo', page: () => Screen2()),
      ],
    );
  }
}
