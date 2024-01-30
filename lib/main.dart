import 'package:flutter/material.dart';
import 'package:recipe_app/models/navItems.dart';
import 'package:recipe_app/screens/components/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create:(context)=>NavItemsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Recipe App",
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity
        ),
        home: const HomeScreen(),
      ),
    );
  }
}


