import 'package:explore_tasik_1/widgets/popular_travel.dart';
import 'package:explore_tasik_1/widgets/travel_categories.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Explore Tasik',
            style: blackTextStyle.copyWith(fontSize: 24, fontWeight: medium),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Mencari tempat healing yang cozy',
            style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
          )
        ],
      );
    }

    Widget travelCategories() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Destinasi Wisata',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          ),
          const SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                TravelCategoriesCard(
                  imageUrl:
                      'https://png.pngtree.com/png-clipart/20200226/original/pngtree-guitar-and-surfing-board-in-the-sun-set-of-beach-vector-png-image_5312586.jpg',
                  title: 'Pantai',
                ),
                SizedBox(
                  width: 16,
                ),
                TravelCategoriesCard(
                  imageUrl:
                      'https://png.pngtree.com/element_our/20190522/ourlarge/pngtree-flying-down-the-waterfall-free-png-transparent-material-image_1075874.jpg',
                  title: 'Curug',
                ),
                SizedBox(
                  width: 16,
                ),
                TravelCategoriesCard(
                  imageUrl:
                      'https://i.pinimg.com/originals/ab/be/7f/abbe7ff235831ad816a5f9da6620a894.jpg',
                  title: 'Gunung',
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
          )
        ],
      );
    }

    Widget popularTravel() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wisata Populer',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          ),
          const SizedBox(
            height: 16,
          ),
          const PopularTravelCard(
              imageUrl:
                  'https://lh5.googleusercontent.com/p/AF1QipOJUfgQgS81HAd6iQdJ2XShTKCbtt7-Kk5eRCLE=w397-h298-k-no',
              rating: 4,
              distance: 13.0,
              addres: 'Cimanuk, Kalapagenep, Cikalong',
              name: 'Karang Tawulan'),
          const SizedBox(
            height: 16,
          ),
          const PopularTravelCard(
              imageUrl:
                  'https://img.okezone.com/content/2021/08/07/408/2452419/fakta-fakta-menarik-curug-panetean-wisata-alam-lagi-hits-di-tasikmalaya-xz75co5vDE.jpg',
              rating: 4,
              distance: 10.0,
              addres: 'Pangliaran, Pancatengah, Tasikmalaya,',
              name: 'Curug Panetean'),
          const SizedBox(
            height: 16,
          )
        ],
      );
    }

    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.only(top: edge, left: edge),
            children: [
              header(),
              const SizedBox(
                height: 25,
              ),
              travelCategories(),
              const SizedBox(
                height: 25,
              ),
              popularTravel()
            ],
          ),
        ));
  }
}
