import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/size_config.dart';

class Info extends StatelessWidget {
  final String name;
  final String email;
  final String image;
  const Info({
    super.key, required this.name, required this.email, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize * 24,
      child: Stack(
        children: [
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: SizeConfig.defaultSize * 15,
              color: primaryColor,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: SizeConfig.defaultSize * 14,
                    width:  SizeConfig.defaultSize * 14,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width: SizeConfig.defaultSize*0.8),
                        image:  DecorationImage(image: AssetImage(image),fit:BoxFit.cover,)
                    ),
                  ),
                  Text(name,style: TextStyle(
                    fontFamily: "Lexend",
                    fontSize: SizeConfig.defaultSize * 2.2,
                    color: primaryColor,
                  ),
                  ),
                  SizedBox(height: SizeConfig.defaultSize/2,),
                  Text(email,style: TextStyle(
                      fontFamily: "Lexend",
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.defaultSize,
                      color: const Color(0xFF8492A2)
                  ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}