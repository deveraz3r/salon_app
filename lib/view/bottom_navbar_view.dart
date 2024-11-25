import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:salon/resources/app_colors.dart';
import 'package:salon/view_model/bottom_navbar_viewmodel.dart';

class BottomNavbarView extends StatefulWidget {
  const BottomNavbarView({super.key});

  @override
  State<BottomNavbarView> createState() => _BottomNavbarViewState();
}

class _BottomNavbarViewState extends State<BottomNavbarView> {
  final BottomNavbarViewmodel _navbarViewmodel = BottomNavbarViewmodel();
  final NotchBottomBarController _controller = NotchBottomBarController();
  final _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(_navbarViewmodel.screens.length, (index) => _navbarViewmodel.screens[index]),
      ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        bottomBarItems: [
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: AppColors.amberColor,
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: AppColors.primaryColor,
            ),
            itemLabel: 'Home',
          ),
          const BottomBarItem(
            inActiveItem: Icon(Icons.star, color: AppColors.amberColor),
            activeItem: Icon(
              Icons.star,
              color: AppColors.primaryColor,
            ),
            itemLabel: 'Services',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.settings,
              color: AppColors.amberColor,
            ),
            activeItem: Icon(
              Icons.settings,
              color: AppColors.primaryColor,
            ),
            itemLabel: 'Page 3',
          ),
          BottomBarItem(
            inActiveItem: const Icon(
              Icons.person,
              color: AppColors.amberColor,
            ),
            activeItem: Icon(
              Icons.person,
              color: AppColors.primaryColor,
            ),
            itemLabel: 'Page 4',
          ),
        ],
        onTap: (index) {
          _navbarViewmodel.currentIndex = index;
          _pageController.jumpToPage(index);
        },
        kIconSize: 24.0,
        kBottomRadius: 28.0,
      ),
    );
  }
}
