import 'package:flutter/material.dart';
import 'package:fruite/features/on_boarding/presentaion/widget/on_boarding_body.dart';
class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingBody(),
    );
  }
}
