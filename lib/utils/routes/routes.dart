import '/utils/app_urls.dart';

class Routes {

  //GetX
  static appRoutes() => [
    GetPage(name: RouteName.home, page: () => HomeView()),
  ];

}