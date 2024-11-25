import 'package:salon/utils/app_urls.dart';
import 'package:salon/view/services_category_view.dart';

class BottomNavbarViewmodel {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeView(),
    ServicesCategoryView(),
  ];
}