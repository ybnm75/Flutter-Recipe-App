import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/models/recipeBundle.dart';
import 'package:recipe_app/size_config.dart';

class RecipeBundleCard extends StatelessWidget {
  final RecipeBundle recipeBundle;
  final Function onPress;
  const RecipeBundleCard({Key? key, required this.recipeBundle, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: (){
        onPress;
      },
      child: Container(
        decoration: BoxDecoration(
            color: recipeBundle.color,
            borderRadius: BorderRadius.circular(defaultSize) * 1.8),
        child: AspectRatio(
          aspectRatio: 0.71,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recipeBundle.title!,
                        style: TextStyle(
                            fontSize: SizeConfig.defaultSize * 1.8,
                            color: Colors.white,
                            fontFamily: "Lexend"),
                      ),
                      SizedBox(height: SizeConfig.defaultSize * 0.5,),
                      Text(
                       recipeBundle.description!,
                        style: const TextStyle(
                            color: Colors.white38, fontFamily: "Lexend"),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: SizeConfig.defaultSize * 1.5,),
                      buildInfoRow(iconSrc: "assets/icons/pot.svg",text:"${recipeBundle.recipes } Recipes"),
                      SizedBox(height: SizeConfig.defaultSize * 0.5,),
                      buildInfoRow(iconSrc: "assets/icons/chef.svg",text:"${recipeBundle.chefs } Chefs"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: SizeConfig.defaultSize * 0.5,
              ),
              Image.asset(
                recipeBundle.imageSrc!,
                width: 220,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildInfoRow({String? iconSrc,text}) {
    return Row(
      children: [
        SvgPicture.asset(iconSrc!,color: Colors.white70,width: 25,height: 25,),
        SizedBox(width: SizeConfig.defaultSize,),
        Text(text!,style: const TextStyle(fontFamily: "Lexend",color: Colors.white70),)
      ],
    );
  }
}