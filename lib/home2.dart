import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  var name;
  HomeScreen({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('learning getX' + Get.arguments[1]),
      ),
      body: Column(
        children: [
          FloatingActionButton(onPressed: () {
            Get.snackbar('Ishita Pathak', "yeah! you have used getx utils",
                backgroundColor: Colors.pink,
                mainButton: TextButton(onPressed: () {}, child: Text('cick')),
                snackPosition: SnackPosition.BOTTOM);
          }),
          Card(
            child: ListTile(
              title: Text('getx dialog box'),
              subtitle: Text("getx dialog alert subtitle"),
              onTap: () {
                Get.defaultDialog(
                    title: "dialog alert",
                    middleText: "are you sure you want to delete");
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('getx dialog box'),
              subtitle: Text("getx dialog alert subtitle"),
              onTap: () {
                Get.defaultDialog(
                    title: "dialog alert",
                    middleText: "are you sure you want to delete");
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('getx dialog box'),
              subtitle: Text("getx dialog alert subtitle"),
              onTap: () {
                Get.bottomSheet(Container(
                  color: Colors.pinkAccent,
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('light theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          }),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text('dark theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
