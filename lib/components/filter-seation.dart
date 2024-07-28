// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/filter-card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterSeation extends StatelessWidget {
  const FilterSeation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            FilterCard(
              title: "Botties",
            ),
            FilterCard(
              title: "Thermos",
            ),
          ],
        ),
        SvgPicture.asset(
          "assets/icon/home/Fillter.svg",
        ),
      ],
    );
  }
}
