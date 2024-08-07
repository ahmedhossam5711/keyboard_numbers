library keyboard_numbers;

import 'package:flutter/material.dart';

class keyboardNumbers extends StatelessWidget {
  final TextEditingController controller;
  final int? length;
  final Color? clearColor;
  final Color? clearTextColor;
  final Color? textColor;
  final double? borderSize;
  final Color? backgroundColor;
  final bool? isCircle;
  final double? fontSize;

  keyboardNumbers(
      {super.key,
      required this.controller,
      this.length,
      this.clearColor,
      this.textColor,
      this.clearTextColor,
      this.borderSize,
      this.isCircle,
      this.fontSize,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 1.5),
      itemCount: 12,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        int number = (index + 1);
        String char = number.toString();
        if (index == 9) char = ",";
        if (index == 10) char = "0";
        if (index == 11) {
          return buttonBad(
              controller: controller,
              char: "x",
              backgroundColor: clearColor,
              textColor: clearTextColor,
              borderSize: borderSize,
              isCircle: isCircle,
              fontSize: fontSize,
              onTap: () {
                if (controller.text.isNotEmpty) {
                  controller.text =
                      controller.text.substring(0, controller.text.length - 1);
                }
              });
        }
        return buttonBad(
            controller: controller,
            char: char,
            isCircle: isCircle,
            backgroundColor: backgroundColor,
            textColor: textColor,
            borderSize: borderSize,
            fontSize: fontSize,
            onTap: () {
              if (controller.text.length == length) return;
              controller.text = controller.text + char;
            });
      },
    );
  }
}

Widget buttonBad(
    {required TextEditingController controller,
    required String char,
    required Function()? onTap,
    Color? textColor,
    double? borderSize,
    bool? isCircle,
    double? fontSize,
    Color? backgroundColor}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.all(8.0),
      decoration: isCircle == true
          ? BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor ?? Colors.blueAccent,
            )
          : BoxDecoration(
              color: backgroundColor ?? Colors.blueAccent,
              borderRadius: BorderRadius.circular(borderSize ?? 10.0),
            ),
      child: Center(
        child: Text(
          char,
          style: TextStyle(
            fontSize: fontSize ?? 24.0,
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    ),
  );
}
