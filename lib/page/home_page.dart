import 'package:cantika/theme.dart';
import 'package:cantika/widget/category.dart';
import 'package:cantika/widget/style_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: 30,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reward Your',
                            style: semiBoldTextStyle.copyWith(
                              fontSize: 24,
                              color: semiBlackColor,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Beauty',
                            style: semiBoldTextStyle.copyWith(
                              fontSize: 24,
                              color: semiBlackColor,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/store.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/bag.png',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 15,
                        runSpacing: 15,
                        children: [
                          Category(
                            category: 'Men',
                            isActive: true,
                          ),
                          Category(
                            category: 'Women',
                            isActive: false,
                          ),
                          Category(
                            category: 'Kids',
                            isActive: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyleCard(
                        imageUrl: 'assets/men1.png',
                        name: 'Holiday Yes',
                        stok: '883 items',
                      ),
                      StyleCard(
                        imageUrl: 'assets/men2.png',
                        name: 'Party Ready',
                        stok: '441 items',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyleCard(
                        imageUrl: 'assets/men3.png',
                        name: 'New Worker',
                        stok: '40,328 items',
                      ),
                      StyleCard(
                        imageUrl: 'assets/men4.png',
                        name: 'Daily Casual',
                        stok: '18,393 items',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyleCard(
                        imageUrl: 'assets/men5.png',
                        name: 'Confident',
                        stok: '200 items',
                      ),
                      StyleCard(
                        imageUrl: 'assets/men6.png',
                        name: 'Picnic Fever',
                        stok: '663 items',
                      ),
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
