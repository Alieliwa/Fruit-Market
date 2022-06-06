import 'package:flutter/material.dart';
import 'package:fruite/core/utils/size_config.dart';
import 'package:fruite/core/widget/space_widget.dart';
class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.title, this.subTitle, this.image}) : super(key: key);
  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const VerticalSpace(25),
        SizedBox(
            height: SizeConfig.defaultSize! * 20,
            child: Image.asset(image!)),
        const  VerticalSpace(5),
        Text(
          title!,
          style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff2f2e41)),
        textAlign: TextAlign.left,
        ),
        const  VerticalSpace(2.5),
        Text(
          subTitle!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 15,
            color: const Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
