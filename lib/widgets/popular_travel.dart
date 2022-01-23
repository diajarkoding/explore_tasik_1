import 'package:explore_tasik_1/routes/route_name.dart';
import 'package:explore_tasik_1/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularTravelCard extends StatelessWidget {
  final String imageUrl;
  final int rating;
  final double distance;
  final String addres;
  final String name;
  const PopularTravelCard(
      {Key? key,
      required this.imageUrl,
      required this.rating,
      required this.distance,
      required this.addres,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(
          RouteName.detailPage,
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.network(
                    imageUrl,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Icon_star.png',
                            width: 22,
                            height: 22,
                          ),
                          Text(
                            '$rating/5',
                            style: whiteTextStyle.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text.rich(
                  TextSpan(
                    text: '$distance',
                    style: purpleTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: ' km',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  addres,
                  style: greyTextStyle,
                  // overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
