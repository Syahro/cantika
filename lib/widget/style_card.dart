import 'package:cantika/page/categories.dart';
import 'package:cantika/theme.dart';
import 'package:flutter/material.dart';

class StyleCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String stok;

  StyleCard({
    this.imageUrl,
    this.name,
    this.stok,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Categories();
            },
          ),
        );
      },
      child: Container(
        height: 190,
        width: ((MediaQuery.of(context).size.width - (2 * defaultMargin)) / 2) -
            8.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imageUrl,
                height: 190,
                width:
                    ((MediaQuery.of(context).size.width - (2 * defaultMargin)) /
                            2) -
                        8.5,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 190,
              width:
                  ((MediaQuery.of(context).size.width - (2 * defaultMargin)) /
                          2) -
                      8.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    blackColor.withOpacity(0.2),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 128,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    stok,
                    style: lightTextStyle.copyWith(
                      fontSize: 12,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
