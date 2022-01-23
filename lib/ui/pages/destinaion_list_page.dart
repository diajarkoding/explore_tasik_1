import 'package:explore_tasik_1/shared/theme.dart';
import 'package:explore_tasik_1/widgets/popular_travel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DestinationListPage extends StatelessWidget {
  const DestinationListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget seacrhDestination() {
      return Container(
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.only(right: edge),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: lightGreyColor,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: light,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: 'Cari lokasi wisata',
                      hintStyle: greyTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: light,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.close,
                    color: greyColor,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget popularTravel() {
      return ListView(
        children: const [
          PopularTravelCard(
              imageUrl:
                  'https://lh5.googleusercontent.com/p/AF1QipOJUfgQgS81HAd6iQdJ2XShTKCbtt7-Kk5eRCLE=w397-h298-k-no',
              rating: 4,
              distance: 13.0,
              addres: 'Cimanuk, Kalapagenep, Cikalong',
              name: 'Karang Tawulan'),
          SizedBox(
            height: 16,
          ),
          PopularTravelCard(
              imageUrl:
                  'https://img.okezone.com/content/2021/08/07/408/2452419/fakta-fakta-menarik-curug-panetean-wisata-alam-lagi-hits-di-tasikmalaya-xz75co5vDE.jpg',
              rating: 4,
              distance: 10.0,
              addres: 'Pangliaran, Pancatengah, Tasikmalaya,',
              name: 'Curug Panetean'),
          SizedBox(
            height: 16,
          ),
          PopularTravelCard(
              imageUrl:
                  'https://img.okezone.com/content/2021/08/07/408/2452419/fakta-fakta-menarik-curug-panetean-wisata-alam-lagi-hits-di-tasikmalaya-xz75co5vDE.jpg',
              rating: 4,
              distance: 10.0,
              addres: 'Pangliaran, Pancatengah, Tasikmalaya,',
              name: 'Curug Panetean'),
          SizedBox(
            height: 16,
          ),
          PopularTravelCard(
              imageUrl:
                  'https://img.okezone.com/content/2021/08/07/408/2452419/fakta-fakta-menarik-curug-panetean-wisata-alam-lagi-hits-di-tasikmalaya-xz75co5vDE.jpg',
              rating: 4,
              distance: 10.0,
              addres: 'Pangliaran, Pancatengah, Tasikmalaya,',
              name: 'Curug Panetean'),
          SizedBox(
            height: 16,
          ),
          PopularTravelCard(
              imageUrl:
                  'https://img.okezone.com/content/2021/08/07/408/2452419/fakta-fakta-menarik-curug-panetean-wisata-alam-lagi-hits-di-tasikmalaya-xz75co5vDE.jpg',
              rating: 4,
              distance: 10.0,
              addres: 'Pangliaran, Pancatengah, Tasikmalaya,',
              name: 'Curug Panetean'),
          SizedBox(
            height: 16,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: const Text('Destinasi Wisata Pantai'),
        backgroundColor: purpleColor,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 16, left: edge),
        child: Stack(
          children: [
            seacrhDestination(),
            Padding(
              padding: const EdgeInsets.only(top: 66),
              child: popularTravel(),
            )
          ],
        ),
      ),
    );
  }
}
