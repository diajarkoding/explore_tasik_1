import 'package:explore_tasik_1/routes/route_name.dart';
import 'package:explore_tasik_1/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TravelCategoriesCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  const TravelCategoriesCard(
      {Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(
          RouteName.listDestination,
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          width: 120,
          height: 150,
          color: lightGreyColor,
          child: Column(
            children: [
              Image.network(
                imageUrl,
                width: 120,
                height: 102,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 11,
              ),
              Text(
                title,
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              )
            ],
          ),
        ),
      ),
    );
  }
}
