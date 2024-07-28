// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/text-title.dart';
import 'dart:ui';
import 'package:flutter_application_1/components/buttom_smal.dart';
import 'package:flutter_application_1/components/data_alliance.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AlliancePage extends StatefulWidget {
  const AlliancePage({super.key});

  @override
  State<AlliancePage> createState() => _AlliancePageState();
}

class _AlliancePageState extends State<AlliancePage> {
  int quantityCount = 0;
  double priceCount = 0.0;

  void decrementQuantity() {
    setState(() {
      quantityCount--;
      priceCount = priceCount - 22.50;
    });
  }

  void incrementQuantity() {
    setState(() {
      quantityCount++;
      priceCount = priceCount + 22.50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/home/D-2.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 2,
              right: 20,
              child: Center(
                child: Image.asset(
                  "assets/home/Thermos.png",
                  width: 380,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtomSmal(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    icons: Icons.arrow_back,
                  ),
                  ButtomSmal(
                    onTap: () {},
                    icons: Icons.favorite_border_outlined,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 120, left: 20),
              child: Column(
                children: [
                  DataAlliance(
                    image: "assets/icon/Details/BPA.svg",
                    title: "BPA free",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DataAlliance(
                    image: "assets/icon/Details/Leack.svg",
                    title: "100%\nLeak proof",
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 240),
              width: 30,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 3,
                    height: 15,
                    color: Colors.black,
                  ),
                  Container(
                    width: 3,
                    height: 15,
                    color: Colors.grey,
                  ),
                  Container(
                    width: 3,
                    height: 15,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Container(
                width: 50,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color1,
                      ),
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color2,
                      ),
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color3,
                      ),
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 500,
                height: 260,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                          child: Container(
                              padding: EdgeInsets.all(20),
                              width: 500,
                              height: 235,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 226, 226, 226)
                                    .withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(78, 231, 230, 230),
                                    blurRadius: 10,
                                    offset: Offset(6, 6),
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  SingleChildScrollView(
                                    reverse: false,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        TextTitle(
                                            title:
                                                "Aliance unisex grey -toned\nthermos bottle - 500ml",
                                            fontStyle: "PoppinsBold",
                                            size: 20,
                                            colortext: textColorBlack),
                                        SizedBox(
                                          height: 5,
                                        ),

                                        //button
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 10,
                                              top: 4,
                                              bottom: 4,
                                              right: 10),
                                          decoration: BoxDecoration(
                                              color: buttoncolor,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: TextTitle(
                                              title: "Best Seller",
                                              fontStyle: "PoppinsRegular",
                                              size: 10,
                                              colortext: textColorW),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        //subtitle

                                        TextTitle(
                                            title:
                                                "Find Your inner peace whith Aliance Bottle. You can carry it whith you everywhere",
                                            fontStyle: "PoppinsRegular",
                                            size: 14,
                                            colortext: textColorBlack),
                                        Text(
                                          "read more",
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: textColorBlack,
                                            fontFamily: "PoppinsRegular",
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 100,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 50, sigmaY: 50),
                                        child: Container(
                                          height: 70,
                                          padding: EdgeInsets.all(10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      color: Color.fromARGB(
                                                          45, 0, 0, 0),
                                                      blurRadius: 10,
                                                      offset: Offset(6, 6),
                                                    )
                                                  ],
                                                ),
                                                padding: EdgeInsets.all(10),
                                                child: TextTitle(
                                                    title: "\$ " +
                                                        priceCount.toString(),
                                                    fontStyle: "PoppinsBold",
                                                    size: 18,
                                                    colortext: textColorBlack),
                                              ),
                                              Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            45, 0, 0, 0),
                                                        blurRadius: 10,
                                                        offset: Offset(6, 6),
                                                      )
                                                    ],
                                                  ),
                                                  padding: EdgeInsets.only(
                                                      top: 10,
                                                      left: 20,
                                                      right: 20,
                                                      bottom: 10),
                                                  child: Row(
                                                    children: [
                                                      GestureDetector(
                                                        onTap:
                                                            decrementQuantity,
                                                        child: TextTitle(
                                                            title: "-",
                                                            fontStyle:
                                                                "PoppinsBold",
                                                            size: 18,
                                                            colortext:
                                                                Colors.grey),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      TextTitle(
                                                          title: quantityCount
                                                              .toString(),
                                                          fontStyle:
                                                              "PoppinsBold",
                                                          size: 18,
                                                          colortext:
                                                              textColorBlack),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      GestureDetector(
                                                        onTap:
                                                            incrementQuantity,
                                                        child: TextTitle(
                                                            title: "+",
                                                            fontStyle:
                                                                "PoppinsBold",
                                                            size: 18,
                                                            colortext:
                                                                Colors.grey),
                                                      ),
                                                    ],
                                                  )),
                                              //shope button
                                              Container(
                                                width: 46,
                                                height: 46,
                                                decoration: BoxDecoration(
                                                  color: buttonshop,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      color: Color.fromARGB(
                                                          45, 0, 0, 0),
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
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 170,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(45, 0, 0, 0),
                              blurRadius: 10,
                              offset: Offset(6, 6),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextTitle(
                                title: "4.5",
                                fontStyle: "PoppinsBold",
                                size: 13,
                                colortext: textColorBlack),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Container(width: 2, height: 15, color: Colors.grey),
                            TextTitle(
                                title: "Rathings",
                                fontStyle: "PoppinsRegular",
                                size: 13,
                                colortext: textColorBlack),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
