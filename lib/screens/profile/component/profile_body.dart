import 'package:flutter/material.dart';
import 'package:recipe_app/screens/profile/component/info.dart';
import 'package:recipe_app/screens/profile/component/profile_body.dart';
import 'package:recipe_app/screens/profile/component/profile_menu_items.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Info(
            name: "Ahmed Younes",
            email: "benmeridjaahmedyounes1@gmail.com",
            image: "assets/images/cook_new@2x.png",
          ),
          ProfileMenuItem(iconSrc: "assets/icons/bookmarks.svg", title: "Saved Recipes", onPress:(){},),
          ProfileMenuItem(iconSrc: "assets/icons/superPlan.svg", title: "Super Plan", onPress:(){},),
          ProfileMenuItem(iconSrc: "assets/icons/languages.svg", title: "Languages", onPress:(){},),
          ProfileMenuItem(iconSrc: "assets/icons/help.svg", title: "Help", onPress:(){},),
        ],
      ),
    );
  }
}



