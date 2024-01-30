import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/size_config.dart';
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int itemIndex = 0;
  List<String> categories = ["All", "Endian", "Algerian", "Italian", "Chinese"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize * 2),
      child: SizedBox(
        height: SizeConfig.defaultSize * 3.5,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return buildCategorieItem(index);
            }),
      ),
    );
  }

  Widget buildCategorieItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          itemIndex = index;
        });
      },
      child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: itemIndex == index ? const Color(0xffeff3ee) : Colors.transparent,
              borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 1.6)),
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.defaultSize * 2,
              vertical: SizeConfig.defaultSize * 0.5),
          child: Text(
            categories[index],
            style:
            TextStyle(fontFamily:"Lexend",fontWeight: FontWeight.bold, color: itemIndex == index ? primaryColor : const Color(0xffc2c2b5)),
          )),
    );
  }
}