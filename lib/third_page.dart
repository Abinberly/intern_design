import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern_design/app_buttons.dart';
import 'package:intern_design/controllers/list_controller.dart';
import 'package:intern_design/controllers/tap_controller.dart';
import 'package:intern_design/home_page.dart';
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() =>  Column(
                children: [
                  AppButton(title: "Y value : ${Get.find<TapController>().y.value.toString()}"),
                  AppButton(title: "Total ${Get.find<TapController>().z.toString()}"),
                ],
              )),
              AppButton(title:
                "X value : ${Get.find<TapController>().x}",
              onTap: (){
                Get.to(()=>const HomePage());
              },
              ),
              
               AppButton(title:
                "Increase Y",
              onTap: (){
                Get.find<TapController>().increaseY();
                //Get.to(()=>const HomePage());
              },
              ),
              AppButton(title: "Total XY",
              onTap: (){
                Get.find<TapController>().totalXY();
              },),
              AppButton(title: "Add to List",onTap: () {
                Get.find<ListController>().setValue(Get.find<TapController>().z);
              },)
            ],
          ),
        ),
      )
    );
  }
}