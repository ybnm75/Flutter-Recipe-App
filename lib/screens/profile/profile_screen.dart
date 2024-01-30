import 'package:flutter/material.dart';
import 'package:recipe_app/screens/profile/component/app_bar.dart';
import 'package:recipe_app/screens/profile/component/profile_body.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ProfileBody(),
    );
  }
}


