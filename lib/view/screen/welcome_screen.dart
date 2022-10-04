import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../generated/assets.dart';
import '../router/router.dart';
import '../widget/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.imagesBitmap), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline3,
                children: [
                  TextSpan(
                    text: 'flamein',
                  ),
                  TextSpan(
                    text: 'go.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedButton(
                text: 'start reading',
                press: () {
                  context.pushNamed(RouteNames.home);
                },
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
