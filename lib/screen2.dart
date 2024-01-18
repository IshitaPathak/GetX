import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        title: Text('getx tutorial'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              color: Colors.yellow,
              height: heigh * 0.6,
              width: Get.width * 0.6,
              child: Center(
                child: Text('center'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
