import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/size_config.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconSrc,title;
  final  VoidCallback onPress;
  const ProfileMenuItem({
    super.key, required this.iconSrc, required this.title, required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2 ,vertical: SizeConfig.defaultSize * 3),
        child: SafeArea(
          child: Row(
            children: [
              SvgPicture.asset(iconSrc,color: kTextLightColor,width: SizeConfig.defaultSize * 2,),
              SizedBox(width: SizeConfig.defaultSize * 2,),
              Text(title,style: TextStyle(fontSize: SizeConfig.defaultSize * 1.6,color: kTextLightColor),),
              const Spacer(),
              Icon(Icons.arrow_forward_ios,size: SizeConfig.defaultSize*1.6,color: kTextLightColor,)
            ],
          ),
        ),
      ),
    );
  }
}