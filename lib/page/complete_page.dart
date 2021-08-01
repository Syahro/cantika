import 'package:cantika/theme.dart';
import 'package:flutter/material.dart';

class CompletePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 63),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/illustration.png',
                width: 248,
                height: 150,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'What a Weather!',
                style: semiBoldTextStyle.copyWith(
                  fontSize: 24,
                  color: whiteColor,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Our team is currently',
                style: lightTextStyle.copyWith(
                  fontSize: 18,
                  color: whiteColor,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'working on your special orders',
                style: lightTextStyle.copyWith(
                  fontSize: 18,
                  color: whiteColor,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width - (2 * 85),
                  decoration: BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                          'Shop More',
                          style: semiBoldTextStyle.copyWith(
                            fontSize: 16,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
