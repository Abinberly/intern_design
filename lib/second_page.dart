import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern_design/app_buttons.dart';
import 'package:intern_design/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         AppButton(title: "Go to Thirdpage",
         onTap: () {
           Get.to(()=>const ThirdPage());
         },
         )
        ],),
      ),
    );
  }
}