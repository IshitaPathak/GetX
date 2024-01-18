import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/home_screen.dart';

class Screen1 extends StatefulWidget {
  // var name;
  Screen1({
    super.key,
  });

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("navigation and route using getx by "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return HomeScreen();
                    // }
                    // Get.to(HomeScreen());
                    Get.toNamed('/homeScreen', arguments: ['Ishita', 'Manas']);
                  },
                  child: Text("Go to next screen")))
        ],
      ),
    );
  }
}
