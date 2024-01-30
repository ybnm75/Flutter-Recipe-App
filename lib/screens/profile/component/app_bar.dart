import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/size_config.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: primaryColor,
    leading: SizedBox(),
    centerTitle: true,
    title: const Text("Profile"),
    actions: [
      MaterialButton(
        onPressed: () {},
        child: Text("Edit",style: TextStyle(fontSize: SizeConfig.defaultSize * 1.6,color: Colors.white),),

      ),
    ],
  );
}
