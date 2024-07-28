// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/list-itemp.dart';
import 'package:flutter_application_1/UI/text-title.dart';
import 'package:flutter_application_1/theme/colors.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 540,
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Container(
        child: Column(
          children: [
            //nav close
            Row(
              //red
              children: [
                Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                //yallow
                Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                  ),
                ),
                //green
                Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // profile data
            Container(
              decoration: BoxDecoration(
                color: selectedmenu,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //avatar profile
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/avatar/avatar-profile.png"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //name user and email
                  Column(
                    children: [
                      TextTitle(
                          title: "Jiml Hendrix",
                          fontStyle: "PoppinsBold",
                          size: 15,
                          colortext: textColorBlack),
                      TextTitle(
                          title: "jimil@clerfiriht.com",
                          fontStyle: "PoppinsRegular",
                          size: 10,
                          colortext: textColorBlack),
                    ],
                  ),
                  SizedBox(
                    width: 19,
                  ),
                  //more
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: buttoncolor,
                    size: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 300,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ListItemp(
                      image: "assets/icon/menu/Dashboard.svg",
                      title: "Dashboard",
                      backgroundcolor: Colors.white,
                      coloricon: textColorBlack,
                      colortext: textColorBlack,
                    ),
                    ListItemp(
                      image: "assets/icon/menu/Quotes.svg",
                      title: "Quotes",
                      backgroundcolor: Colors.white,
                      coloricon: textColorBlack,
                      colortext: textColorBlack,
                    ),
                    ListItemp(
                      image: "assets/icon/menu/Boaking.svg",
                      title: "Boaking",
                      backgroundcolor: Colors.white,
                      coloricon: textColorBlack,
                      colortext: textColorBlack,
                    ),
                    ListItemp(
                      image: "assets/icon/menu/Biling.svg",
                      title: "Biling",
                      backgroundcolor: Colors.white,
                      coloricon: textColorBlack,
                      colortext: textColorBlack,
                    ),
                    ListItemp(
                      image: "assets/icon/menu/User_Details.svg",
                      title: "User Details",
                      backgroundcolor: Colors.white,
                      coloricon: textColorBlack,
                      colortext: textColorBlack,
                    ),
                    ListItemp(
                      image: "assets/icon/menu/Order.svg",
                      title: "Order",
                      backgroundcolor: selectedmenu,
                      coloricon: buttoncolor,
                      colortext: buttoncolor,
                    ),
                    ListItemp(
                      image: "assets/icon/menu/Reports.svg",
                      title: "Reports",
                      backgroundcolor: Colors.white,
                      coloricon: textColorBlack,
                      colortext: textColorBlack,
                    ),
                    ListItemp(
                      image: "assets/icon/menu/File_Manager.svg",
                      title: "File Manager",
                      backgroundcolor: Colors.white,
                      coloricon: textColorBlack,
                      colortext: textColorBlack,
                    ),
                    ListItemp(
                      image: "assets/icon/menu/Biling.svg",
                      title: "Biling",
                      backgroundcolor: Colors.white,
                      coloricon: textColorBlack,
                      colortext: textColorBlack,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            ListItemp(
              image: "assets/icon/menu/Logout.svg",
              title: "Logout",
              backgroundcolor: Colors.white,
              coloricon: textColorBlack,
              colortext: textColorBlack,
            ),
          ],
        ),
      ),
    );
  }
}
