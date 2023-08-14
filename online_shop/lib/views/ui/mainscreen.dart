import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:online_shop/views/shared/appstyle.dart';
import 'package:online_shop/views/shared/bottom_nav_widget.dart';
import 'package:online_shop/views/ui/cartpage.dart';
import 'package:online_shop/views/ui/homepage.dart';
import 'package:online_shop/views/ui/profile.dart';
import 'package:online_shop/views/ui/searchpage.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    int pageIndex = 1;
    return Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: pageList[pageIndex],
        // Center(
        //   child: Text(
        //     "MainScreen",
        //     style: appstyle(40, Colors.black, FontWeight.bold),
        //   ),
        // ),
        bottomNavigationBar: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNavWidget(
                  onTap: () {},
                  icon: MaterialCommunityIcons.home,
                ),
                BottomNavWidget(
                  onTap: () {},
                  icon: Ionicons.search,
                ),
                BottomNavWidget(
                  onTap: () {},
                  icon: Ionicons.add,
                ),
                BottomNavWidget(
                  onTap: () {},
                  icon: Ionicons.cart,
                ),
                BottomNavWidget(
                  onTap: () {},
                  icon: Ionicons.person,
                ),
              ],
            ),
          ),
        )));
  }
}
