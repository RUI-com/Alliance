// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';

class ButtomSmal extends StatelessWidget {
  final icons;
  final void Function()? onTap;
  const ButtomSmal({super.key, required this.icons, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
          child: Container(
            width: 46,
            height: 46,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
            ),
            child: Icon(
              icons,
              color: textColorBlack,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
