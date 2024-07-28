// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/text-title.dart';
import 'package:flutter_application_1/theme/colors.dart';

class FilterCard extends StatelessWidget {
  final String title;
  const FilterCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(45, 0, 0, 0),
              blurRadius: 10,
              offset: Offset(6, 6),
            )
          ]),
      child: Row(
        children: [
          TextTitle(
              title: title,
              fontStyle: "PoppinsRegular",
              size: 12,
              colortext: textColorBlack),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.close_rounded,
            size: 20,
          ),
        ],
      ),
    );
  }
}
