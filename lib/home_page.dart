import 'package:flutter/material.dart';
import 'package:intern_design/app_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(title: "Tap", onTap: (){}),
            AppButton(title: "Tap", onTap: (){}),
            AppButton(title: "Tap", onTap: (){}),
            AppButton(title: "Tap", onTap: (){}),
          ],
        ),
      ),
    );
  }
}