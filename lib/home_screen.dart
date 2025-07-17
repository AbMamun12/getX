import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/counter_controller.dart';
import 'package:getx/setting_screen.dart';

//Obs ,Obx, GetxController, GetBuilder
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  
  static const String name ='/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              builder: (counterController) {
                return Text(
                  '${counterController.counter}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
/*
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingScreen(),
                  ),
                );

*/
/*

                Get.to(() =>const SettingScreen());
*/
              //Named Navigation
                Navigator.pushNamed(context, SettingScreen.name);

                },
              child: Text('Settings'),
            ),
            ElevatedButton(onPressed: (){
              Get.showSnackbar(GetSnackBar(
                title: 'Title' ,
                message: 'This is message',
                duration: Duration(seconds: 3),
                snackPosition: SnackPosition.TOP,

              ));
            }, child: const Text('Show Snack Bar'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CounterController>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
