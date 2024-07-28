// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/text-title.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardSimple extends StatelessWidget {
  final String image;
  final String title;
  final String m;
  final String price;
  const CardSimple(
      {super.key,
      required this.image,
      required this.title,
      required this.m,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              TextTitle(
                  title: title,
                  fontStyle: "PoppinsBold",
                  size: 12,
                  colortext: textColorBlack),
              //m
              TextTitle(
                  title: "${m}ml",
                  fontStyle: "PoppinsRegular",
                  size: 14,
                  colortext: color1),

              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextTitle(
                      title: "\$ ${price}",
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
    );
  }
}
