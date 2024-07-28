// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/text-title.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BeastCard extends StatelessWidget {
  const BeastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/alliance');
      },
      child: Container(
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(45, 0, 0, 0),
              blurRadius: 10,
              offset: Offset(6, 6),
            )
          ],
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            //image
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/home/1.png"), fit: BoxFit.cover),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                TextTitle(
                    title: "Aliance unisex grey -\ntoned thermos bottle",
                    fontStyle: "PoppinsBold",
                    size: 12,
                    colortext: textColorBlack),
                //m
                TextTitle(
                    title: "500ml",
                    fontStyle: "PoppinsRegular",
                    size: 14,
                    colortext: color1),
                //button
                Container(
                  padding:
                      EdgeInsets.only(left: 10, top: 4, bottom: 4, right: 10),
                  decoration: BoxDecoration(
                      color: buttoncolor,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextTitle(
                      title: "Best Seller",
                      fontStyle: "PoppinsRegular",
                      size: 10,
                      colortext: textColorW),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextTitle(
                        title: "\$ 22.50",
                        fontStyle: "PoppinsBold",
                        size: 18,
                        colortext: textColorBlack),
                    SvgPicture.asset(
                      "assets/icon/home/like.svg",
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
