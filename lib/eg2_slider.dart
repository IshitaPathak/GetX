import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/eg2_slider_controller.dart';
import 'package:get_x/main.dart';

class Eg2_Slider extends StatefulWidget {
  const Eg2_Slider({super.key});

  @override
  State<Eg2_Slider> createState() => _Eg2_SliderState();
}

class _Eg2_SliderState extends State<Eg2_Slider> {
  ExampleTwoCOntroller exampleTwoController = Get.put(ExampleTwoCOntroller());
  // var opacity = 0.4;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('example 2 to learn getx tutorial')),
      ),
      body: Column(children: [
        Obx(
          () => Padding(
            padding: const EdgeInsets.all(28.0),
            child: Container(
              height: 200,
              width: 200,
              color:
                  Colors.blue.withOpacity(exampleTwoController.opacity.value),
            ),
          ),
        ),
        Obx(() => Slider(
              label: "$exampleTwoController.opacity.value",
              // min: 0,
              // max: 1,
              value: exampleTwoController.opacity.value,
              onChanged: (value) {
                // opacity = value;
                exampleTwoController.setOpacity(value);
                // setState(() {});
              },
            )),
      ]),
    );
  }
}
