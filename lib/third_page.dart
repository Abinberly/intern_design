import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern_design/app_buttons.dart';
import 'package:intern_design/controllers/tap_controller.dart';
import 'package:intern_design/home_page.dart';
import 'package:intern_design/new_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(title: controller.x.toString(),
            onTap: (){
              Get.to(()=>const HomePage());
            },
            )
          ],
        ),
      ),
    );
  }
}