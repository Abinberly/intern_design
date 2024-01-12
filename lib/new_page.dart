import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern_design/app_buttons.dart';
import 'package:intern_design/controllers/tap_controller.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           GetBuilder<TapController>(builder: (_){
            return AppButton(title: controller.x.toString(),
            );
           }), AppButton(title: "Tap",
            onTap: (){controller.decreaseX();},
            )
          ],
        ),
      ),

    );
  }
}