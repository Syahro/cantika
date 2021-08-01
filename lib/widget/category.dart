import 'package:cantika/theme.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String category;
  final bool isActive;

  Category({
    this.category,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 30,
      decoration: BoxDecoration(
        color: isActive ? blackColor : whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          category,
          style: semiBoldTextStyle.copyWith(
            fontSize: 16,
            color: isActive ? whiteColor : lightGreyColor,
          ),
        ),
      ),
    );
  }
}
