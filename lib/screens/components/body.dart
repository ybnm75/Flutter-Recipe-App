import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipeBundle.dart';
import 'package:recipe_app/screens/components/categorie.dart';
import 'package:recipe_app/screens/components/recipe_bundle_card.dart';
import 'package:recipe_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Column(
        children: [
           const Categories(),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.35),
                child: GridView.builder(
                  itemCount: RecipeBundle.recipeBundle.length,
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                    mainAxisSpacing: 20,childAspectRatio: 1.65,
                    crossAxisSpacing: SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                  ),
                    itemBuilder: (context,index)=>RecipeBundleCard(
                      recipeBundle: RecipeBundle.recipeBundle[index],
                      onPress: () {

                      }
                      ,
                    ),

                    ),
              )),
        ],
      ),
    );
  }
}


