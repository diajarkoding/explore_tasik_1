import 'dart:async';
import 'package:explore_tasik_1/routes/route_name.dart';
import 'package:flutter/material.dart';
import '../shared/theme.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Get.toNamed(RouteName.mainPage);
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // margin: const EdgeInsets.only(bottom: 5),
              width: width * 0.3,
              height: height * 0.2,

              decoration: const BoxDecoration(
                // color: blackColor,
                image: DecorationImage(
                    image: AssetImage(
                  'assets/Logo_explore_tasik.png',
                )),
              ),
            ),
            Text(
              'Explore Tasik',
              style: blackTextStyle.copyWith(fontSize: 28, fontWeight: medium),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
