import 'package:explore_tasik_1/controller/main_controller.dart';
import 'package:explore_tasik_1/ui/pages/home_page.dart';
import 'package:explore_tasik_1/ui/pages/map_page_2.dart';
import 'package:explore_tasik_1/ui/pages/wishlist_page.dart';
import 'package:explore_tasik_1/ui/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  final mainC = Get.find<MainPageController>();

  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int currentIndex = 0;

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: Obx(
          () => BottomNavigationBar(
            backgroundColor: whiteColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 10.0,
            type: BottomNavigationBarType.fixed,
            currentIndex: mainC.currentIndex.value,
            onTap: (value) => mainC.changeCurrentIndex(value),
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.symmetric(vertical: 2
                      // top: 5,
                      ),
                  child: Image.asset(
                    'assets/Icon_home.png',
                    width: 26,
                    color:
                        mainC.currentIndex.value == 0 ? purpleColor : greyColor,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.symmetric(vertical: 2
                      // top: 5,
                      ),
                  child: Icon(
                    Icons.map,
                    color:
                        mainC.currentIndex.value == 1 ? purpleColor : greyColor,
                    size: 26,
                  ),

                  // child: Image.asset(
                  //   'assets/Icon_mail.png',
                  //   width: 26,
                  //   color: greyColor,
                  // ),
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.symmetric(vertical: 2
                      // top: 5,
                      ),
                  child: Image.asset(
                    'assets/Icon_love.png',
                    width: 26,
                    color:
                        mainC.currentIndex.value == 2 ? purpleColor : greyColor,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  margin: const EdgeInsets.symmetric(vertical: 2

                      // top: 5,
                      ),
                  child: Icon(
                    Icons.settings,
                    size: 26,
                    color:
                        mainC.currentIndex.value == 3 ? purpleColor : greyColor,
                  ),
                  // child: Image.asset(
                  //   'assets/Icon_love.png',
                  //   width: 26,
                  //   color: greyColor,
                  // ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (mainC.currentIndex.value) {
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

    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: customBottomNav(),
      body: Obx(
        () => body(),
      ),
    );
  }
}
