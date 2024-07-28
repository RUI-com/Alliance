// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:flutter_application_1/components/beast-card.dart';
import 'package:flutter_application_1/components/bottom-navigation-bar.dart';
import 'package:flutter_application_1/components/card-simple.dart';
import 'package:flutter_application_1/components/filter-seation.dart';
import 'package:flutter_application_1/components/heading-top.dart';
import 'package:flutter_application_1/components/sidebar-menu.dart';
import 'package:flutter_application_1/theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        // bottomNavigationBar: BottomNavBar(),
        drawer: SidebarMenu(),
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 60,
                ),
                FilterSeation(),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            BeastCard(),
                            SizedBox(
                              height: 15,
                            ),
                            CardSimple(
                              image: "assets/home/3.png",
                              title: "Domyes by Decethion",
                              m: "500",
                              price: "32.50",
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            CardSimple(
                              image: "assets/home/3.png",
                              title: "Domyes by Decethion",
                              m: "500",
                              price: "32.50",
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CardSimple(
                              image: "assets/home/2.png",
                              title: "Vibe Pluse",
                              m: "750",
                              price: "16.75",
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            CardSimple(
                              image: "assets/home/4.png",
                              title: "Vieneechef",
                              m: "500",
                              price: "22.50",
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            CardSimple(
                              image: "assets/home/4.png",
                              title: "Vieneechef",
                              m: "500",
                              price: "22.50",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            //Heading top
            HeadingTop(),
            Positioned(
              bottom: 20,
              child: BottomNavBar(),
            ),
          ],
        ));
  }
}
