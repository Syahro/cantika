import 'package:cantika/theme.dart';
import 'package:cantika/widget/bag_like_info.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final bool isBag;
  final bool isLike;

  CategoriesCard({
    this.imageUrl,
    this.name,
    this.price,
    this.isBag,
    this.isLike,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 244,
      width:
          ((MediaQuery.of(context).size.width - (2 * defaultMargin)) / 2) - 8.5,
      color: whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imageUrl,
                  height: 190,
                  width: ((MediaQuery.of(context).size.width -
                              (2 * defaultMargin)) /
                          2) -
                      8.5,
                  fit: BoxFit.cover,
                ),
              ),
              BagLikeInfo(
                isBag: isBag,
                isLike: isLike,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            name,
            style: regularTextStyle.copyWith(
              fontSize: 16,
              color: semiBlackColor,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            price,
            style: lightTextStyle.copyWith(
              fontSize: 12,
              color: semiBlackColor,
            ),
          ),
        ],
      ),
    );
  }
}
