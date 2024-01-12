import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const AppButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(20),
        width: mediaQuery.size.width * 1,
        height: mediaQuery.size.height * 0.13,
        decoration: BoxDecoration(
            color: Colors.teal, borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          title,
          style:  TextStyle(color: Colors.white,fontSize: mediaQuery.size.height * 0.03),
        )),
      ),
    );
  }
}
