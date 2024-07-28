// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/text-title.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DataAlliance extends StatelessWidget {
  final String image;
  final String title;
  const DataAlliance({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          image,
        ),
        SizedBox(
          height: 5,
        ),
        TextTitle(
          title: title,
          fontStyle: "PoppinsBold",
          size: 10,
          colortext: textColorBlack,
        ),
      ],
    );
  }
}
