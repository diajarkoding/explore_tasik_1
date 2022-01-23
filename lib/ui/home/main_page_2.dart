import 'package:explore_tasik_1/shared/theme.dart';
import 'package:explore_tasik_1/ui/pages/home_page.dart';
import 'package:explore_tasik_1/ui/pages/map_page_2.dart';
import 'package:explore_tasik_1/ui/pages/setting_page.dart';
import 'package:explore_tasik_1/ui/pages/wishlist_page.dart';
import 'package:explore_tasik_1/widgets/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class MainPageTwo extends StatelessWidget {
  const MainPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const MapPageTwo();
        case 2:
          return const LovePage();
        case 3:
          return const SettingPage();
        default:
          return const HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: edge,
            right: edge,
          ),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavigation(
                index: 0,
                imageUrl: 'assets/icon_home.png',
              ),
              CustomBottomNavigation(
                index: 1,
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNavigation(
                index: 2,
                imageUrl: 'assets/icon_card.png',
              ),
              CustomBottomNavigation(
                index: 3,
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          // buildContent(currentIndex),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
