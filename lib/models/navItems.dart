import 'package:flutter/material.dart';
import 'package:recipe_app/screens/components/home_screen.dart';
import 'package:recipe_app/screens/profile/profile_screen.dart';

class NavItems{
  final int id;
  final String icon;
   Widget? destination;

  NavItems({required this.id,required this.icon,required this.destination});

  bool destinationChecker() {
    if(destination != null) {
      return true;
    } else {
      return false;
    }
  }
  List<NavItems> navItems = [

  ];
}

class NavItemsProvider extends ChangeNotifier{
  int selectedItem = 0;

  void changeItem({int? index}) {
    selectedItem = index!;
    notifyListeners();
  }

  List<NavItems> navItems = [
    NavItems(
        id: 1,
        icon: "assets/icons/home.svg",
        destination: const HomeScreen(),
    ),
    NavItems(
        id: 2,
        icon: "assets/icons/list.svg", destination: null,

    ),
    NavItems(
        id: 3,
        icon: "assets/icons/camera.svg",
      destination: null,
    ),
    NavItems(
        id: 4,
        icon: "assets/icons/chef.svg", destination: null,
    ),
    NavItems(
        id: 4,
        icon: "assets/icons/user.svg",
      destination: const ProfileScreen(),
    ),
  ];

}

