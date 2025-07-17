import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/counter_controller.dart';
import 'package:getx/home_screen.dart';
import 'package:getx/profile_screen.dart';
import 'package:getx/setting_screen.dart';

void main(){
  runApp(CounterApp());
}
class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      initialBinding: ControllerBinder(),
      initialRoute: '/',
      routes: {
        HomeScreen.name:(context)=>const HomeScreen(),
        ProfileScreen.name:(context)=>const ProfileScreen(),
        SettingScreen.name:(context)=>const SettingScreen(),

      },
    );
  }
}

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(CounterController());
  }

}
