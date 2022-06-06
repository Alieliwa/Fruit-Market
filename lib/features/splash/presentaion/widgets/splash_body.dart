import 'package:flutter/material.dart';
import 'package:fruite/core/utils/size_config.dart';
import 'package:fruite/features/on_boarding/presentaion/on_boarding_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin{
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,
        duration: const Duration(milliseconds: 2000));
    fadingAnimation = Tween<double>(begin: 0,end: 1).animate(animationController!);

    animationController!.repeat(reverse: true);
    goToNextView();
  }
  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children:  [
        const Spacer(),
        FadeTransition(opacity: fadingAnimation!,
        child: Text(
          'Fruit Market',
          style: TextStyle(
             fontSize: 50, color: Color(0xffffffff),
              fontWeight: FontWeight.bold),
        ),
        ),
        Image.asset('assets/images/splash_view_image.png'),
      ],
    );
  }
}

void goToNextView() {
  Future.delayed(Duration(seconds: 5),(){
    Get.to(()=>OnBoardingView(),transition: Transition.fade);
  });
}
