import 'package:flutter/material.dart';
import 'package:fruite/core/utils/size_config.dart';

import '../constants.dart';
class CusttomGeneralButton extends StatelessWidget {
  const CusttomGeneralButton({Key? key, this.text}) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius:  BorderRadius.circular(8),

      ),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xffffffff),
            fontWeight: FontWeight.w500,
          ),
        ),

      ),
    );
  }
}
