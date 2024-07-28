// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeadingTop extends StatelessWidget {
  const HeadingTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 10),
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //menu button
          Builder(builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(45, 0, 0, 0),
                      blurRadius: 10,
                      offset: Offset(6, 6),
                    )
                  ],
                ),
                padding: EdgeInsets.all(10),
                child: SvgPicture.asset(
                  "assets/icon/home/menu.svg",
                ),
              ),
            );
          }),
          // logo world
          Container(
            child: SvgPicture.asset(
              "assets/icon/home/Logo_word.svg",
            ),
          ),
          //shope button
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: buttonshop,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(45, 0, 0, 0),
                  blurRadius: 10,
                  offset: Offset(6, 6),
                )
              ],
            ),
            padding: EdgeInsets.all(15),
            child: SvgPicture.asset(
              "assets/icon/home/shop.svg",
            ),
          ),
        ],
      ),
    );
  }
}
