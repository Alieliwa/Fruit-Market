import 'package:flutter/material.dart';
import 'package:fruite/features/splash/presentaion/widgets/splash_body.dart';

import '../../../core/constants.dart';
class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMainColor,
      body: SplashBody(),
    );
  }
}
