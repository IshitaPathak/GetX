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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.yellow,
              height: heigh * 0.3,
              width: Get.width * 0.6,
              child: Center(
                child: Text('center'),
              ),
            ),
          ),
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(height: 40),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('en', 'US'));
                  },
                  child: Text('English')),
              SizedBox(width: 20),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('ur', 'PK'));
                  },
                  child: Text('Urdu'))
            ],
          ),
          // ignore: avoid_print
        ],
      ),
    );
  }
}
