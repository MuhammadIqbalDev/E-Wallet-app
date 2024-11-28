import 'package:eternalwallet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListchainpancakItemWidget extends StatelessWidget {
  final Widget image;
  final String title;
  final String desc;
  final Widget image1;
  final String title1;
  final String desc1;
  ListchainpancakItemWidget({required this.image, required this.title, required this.desc, required this.image1, required this.title1, required this.desc1});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: getHorizontalSize(
              240,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                image,
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 1,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold20,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 7,
                        ),
                        child: Text(
                          desc,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistSemiBold14.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: getHorizontalSize(
              240,
            ),
            margin: getMargin(
              left: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               image1,
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 1,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold20,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 6,
                        ),
                        child: Text(
                          desc1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtUrbanistSemiBold14Gray30099.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
