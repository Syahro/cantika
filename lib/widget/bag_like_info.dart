import 'package:cantika/page/detail_page.dart';
import 'package:cantika/theme.dart';
import 'package:flutter/material.dart';

class BagLikeInfo extends StatelessWidget {
  final bool isBag;
  final bool isLike;

  BagLikeInfo({
    this.isBag,
    this.isLike,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 16,
        top: 146,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailPage();
                  },
                ),
              );
            },
            child: Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                color: isBag ? orangeColor : whiteColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: isBag ? whiteColor : blackColor,
                  size: 15,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              color: isLike ? orangeColor : whiteColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: Icon(
                Icons.thumb_up_alt_outlined,
                color: isLike ? whiteColor : blackColor,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
