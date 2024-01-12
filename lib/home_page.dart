import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern_design/app_buttons.dart';
import 'package:intern_design/controllers/tap_controller.dart';
import 'package:intern_design/new_page.dart';
import 'package:intern_design/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child:  SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<TapController>(builder:(_){
                return AppButton(title: controller.x.toString(),);},),
              AppButton(title: "Increse", onTap: (){
                controller.increaseX();
              }),
              AppButton(title: "Decrease", onTap: (){
                controller.decreaseX();
              }),
               AppButton(title: "New Page", onTap: (){
                Get.to(()=>const NewPage());
              }),
              AppButton(title: "Second Page", onTap: (){
                Get.to(()=>const SecondPage());
              }),
            ],
          ),
        ),
      ),
    );
  }
}