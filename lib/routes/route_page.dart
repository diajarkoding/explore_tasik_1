import 'package:explore_tasik_1/bindings/bind_ctrl.dart';
import 'package:explore_tasik_1/ui/home/main_page.dart';
import 'package:explore_tasik_1/ui/pages/destinaion_list_page.dart';
import 'package:explore_tasik_1/ui/pages/detail_page.dart';
import 'package:get/get.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: '/main-page',
      page: () => MainPage(),
      binding: BindC(),
    ),
    GetPage(name: '/destination-list', page: () => const DestinationListPage()),
    GetPage(name: '/detail-destination', page: () => const DetailPage()),
  ];
}
