import 'package:cantika/theme.dart';
import 'package:cantika/widget/size_info.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/men_detail.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Senatta Malla',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 36,
                          color: whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '\$800',
                        style: regularTextStyle.copyWith(
                          fontSize: 24,
                          color: whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 28,
                        ),
                        Row(
                          children: [
                            SizeInfo(
                              sizeInfo: 'S',
                              isActive: false,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            SizeInfo(
                              sizeInfo: 'M',
                              isActive: true,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            SizeInfo(
                              sizeInfo: 'L',
                              isActive: false,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            SizeInfo(
                              sizeInfo: 'X',
                              isActive: false,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width -
                              (2 * defaultMargin),
                          decoration: BoxDecoration(
                            color: orangeColor,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/bag1.png',
                                width: 22,
                                height: 22,
                                color: whiteColor,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Add to Cart',
                                style: semiBoldTextStyle.copyWith(
                                  fontSize: 16,
                                  color: whiteColor,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
