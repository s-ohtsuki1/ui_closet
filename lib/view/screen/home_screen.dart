import 'package:flutter/material.dart';
import 'package:ui_closet/generated/assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
            image: AssetImage(
              Assets.imageMainPageBg,
            ),
          ),
        ),
      ),
    );
  }
}
