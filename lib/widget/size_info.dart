import 'package:cantika/theme.dart';
import 'package:flutter/material.dart';

class SizeInfo extends StatelessWidget {
  final String sizeInfo;
  final bool isActive;

  SizeInfo({
    this.sizeInfo,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(22.5),
        border: Border.all(
          color: isActive ? orangeColor : semiBlackColor,
        ),
      ),
      child: Center(
        child: Text(
          sizeInfo,
          style: lightTextStyle.copyWith(
            fontSize: 24,
            color: isActive ? orangeColor : semiBlackColor,
          ),
        ),
      ),
    );
  }
}
