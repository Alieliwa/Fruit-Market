import 'package:flutter/material.dart';
import 'package:fruite/core/utils/size_config.dart';
import 'package:fruite/core/widget/custtom_buttons.dart';
import 'package:fruite/features/on_boarding/presentaion/widget/custom_page_view.dart';
class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children:  [
        CusttomPageView(),
        Positioned(
          top:  SizeConfig.defaultSize! * 10,
          right: 32,
          child: Text('Skip',style: TextStyle(
            fontSize: 14,
            color:Color(0xff898989)
          ),
            textAlign: TextAlign.left,
          ),
        ),
        Positioned(
            bottom: SizeConfig.defaultSize! *  10,
            left: SizeConfig.defaultSize! *  10,
            right: SizeConfig.defaultSize! *  10,
            child: CusttomGeneralButton(text: 'Next',)),
      ],
    );
  }
}
