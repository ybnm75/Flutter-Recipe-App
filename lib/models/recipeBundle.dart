import 'package:flutter/material.dart';

class RecipeBundle {
  final int? id,chefs,recipes;
  final String? title,description,imageSrc;
  final Color? color;

  RecipeBundle({ this.id,  this.chefs,  this.recipes,  this.title,  this.description,  this.imageSrc,  this.color});

    static List<RecipeBundle> recipeBundle = [
    RecipeBundle(
      id: 1,
      chefs: 16,
      recipes: 95,
      title: "Cook something new everyDay",
      description: "New and tasty meals for all the audience",
      imageSrc: "assets/images/cook_new@2x.png",
      color: const Color(0xffd82d40),
    ),
    RecipeBundle(
      id: 2,
      chefs: 15,
      recipes: 53,
      title: "Best of 2020",
      description: "New and tasty recipes for occasion seasons",
      imageSrc: "assets/images/cook_new@2x.png",
      color: const Color(0xff9FCB52),
    ),
    RecipeBundle(
      id: 3,
      chefs: 18,
      recipes: 62,
      title: "Food Court",
      description: "Make your favorite food cook now",
      imageSrc: "assets/images/cook_new@2x.png",
      color: const Color(0xffD5C824),
    ),
  ];

}