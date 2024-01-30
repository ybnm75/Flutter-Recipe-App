import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/models/navItems.dart';
import 'package:recipe_app/size_config.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Consumer<NavItemsProvider>(
      builder: (context, navItems, child) => Container(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 3),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -7),
              blurRadius: 30,
              color: const Color(0xFF4B1A39).withOpacity(0.2),
            ),
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              navItems.navItems.length,
              (index) => buildIconButtonItems(
                icon: navItems.navItems[index].icon,
                isActive: navItems.selectedItem == index ? true : false,
                onPress: () {
                  navItems.changeItem(index: index);
                  if(navItems.navItems[index].destinationChecker()){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>navItems.navItems[index].destination!));
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  IconButton buildIconButtonItems(
      {String? icon, required VoidCallback onPress, bool isActive = false}) {
    return IconButton(
      onPressed: onPress,
      icon: SvgPicture.asset(
        icon!,
        color: isActive ? primaryColor : const Color(0xFFD1D4D4),
        height: 30,
      ),
    );
  }
}
