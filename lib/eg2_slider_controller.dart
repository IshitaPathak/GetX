import 'package:get/get.dart';

class ExampleTwoCOntroller extends GetxController {
  RxDouble opacity = .4.obs;

  setOpacity(double value) {
    // this is the function that we create and call when we change the slider
    opacity.value = value;
  }
}
