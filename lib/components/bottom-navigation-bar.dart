// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    "assets/icon/navigationbar/home.svg",
                    color: buttoncolor,
                  ),
                  SvgPicture.asset(
                    "assets/icon/navigationbar/search.svg",
                  ),
                  SvgPicture.asset(
                    "assets/icon/navigationbar/sitteng.svg",
                  ),
                ],
              ),
            )));
  }
}
