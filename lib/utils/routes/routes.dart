import '/utils/app_urls.dart';

class Routes {

  //GetX
  static appRoutes() => [
    GetPage(name: RouteName.bottomNavbar, page: () => BottomNavbarView()),
    GetPage(name: RouteName.home, page: () => HomeView()),
    GetPage(name: RouteName.servicesCategory, page: () => ServicesCategoryView()),
    GetPage(name: RouteName.servicesDetails, page: () => ServicesDetailsView()),
  ];

}