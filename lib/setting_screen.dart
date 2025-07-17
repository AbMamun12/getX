import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/counter_controller.dart';
import 'package:getx/profile_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  static const String name ='/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
             // Navigator.pop(context);
              Get.back();
            }, child: Text('Back')),
            ElevatedButton(onPressed: (){
/*
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingScreen(),
                ),
              );
*/
              Get.off(() =>const ProfileScreen());
            }, child: Text('Profile Screen')),

          ],
        )
      ),
    );
  }
}
