import 'package:cantika/theme.dart';
import 'package:cantika/widget/bag_like_info.dart';
import 'package:cantika/widget/bottom_floating.dart';
import 'package:cantika/widget/categories_card.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: BottomFloating(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoriesCard(
                            imageUrl: 'assets/men7.png',
                            name: 'Grey Manni',
                            price: '\$18,309',
                            isBag: false,
                            isLike: false,
                          ),
                          CategoriesCard(
                            imageUrl: 'assets/men8.png',
                            name: 'Uncle Dunn',
                            price: '\$29,000',
                            isBag: false,
                            isLike: true,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoriesCard(
                            imageUrl: 'assets/men9.png',
                            name: 'Senatta Malla',
                            price: '\$800',
                            isBag: true,
                            isLike: false,
                          ),
                          CategoriesCard(
                            imageUrl: 'assets/men10.png',
                            name: 'Army Six',
                            price: '\$34,000',
                            isBag: false,
                            isLike: false,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoriesCard(
                            imageUrl: 'assets/men11.png',
                            name: 'Grey Manni',
                            price: '\$18,309',
                            isBag: true,
                            isLike: true,
                          ),
                          CategoriesCard(
                            imageUrl: 'assets/men12.png',
                            name: 'Grey Manni',
                            price: '\$18,309',
                            isBag: false,
                            isLike: true,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 119,
              width: double.infinity,
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Holiday Yes',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 24,
                          color: whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '883 items',
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                          color: whiteColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
