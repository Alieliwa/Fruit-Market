import 'package:flutter/material.dart';
import 'package:fruite/features/on_boarding/presentaion/widget/page_view_item.dart';
class CusttomPageView extends StatelessWidget {
  const CusttomPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(image: 'assets/images/onboarding1.png',title:'E Shopping' ,subTitle: 'Explore  top organic fruits & grab them',),
        PageViewItem(image: 'assets/images/onboarding2.png',title:'Delivery on the way' ,subTitle: 'Get your order by speed delivery',),
        PageViewItem(image: 'assets/images/onboarding3.png',title:'Delivery Arrived' ,subTitle: 'Order is arrived at your Place',),
      ],
    );
  }
}
