import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/counter_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CounterController controller = Get.put(CounterController());
  // int x = 0;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     x++;
  //     setState(() {});
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX statemanagement start'),
      ),
      body: Column(
        children: [
          Center(child: Obx(() {
            print("only this widget is e=rebuild");
            return Text(
              controller.counter.toString(),
              style: TextStyle(fontSize: 30),
            );
          })),
          Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      title: Text(index.toString()),
                    );
                  }))),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.incrementCounter();
        // x++;
        // setState(() {});
      }),
    );
  }
}
