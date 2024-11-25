import 'package:salon/view/bottom_navbar_view.dart';

import '/utils/app_urls.dart';

class Routes {

  //GetX
  static appRoutes() => [
    GetPage(name: RouteName.bottomNavbar, page: () => BottomNavbarView()),
    GetPage(name: RouteName.home, page: () => HomeView()),
  ];

}