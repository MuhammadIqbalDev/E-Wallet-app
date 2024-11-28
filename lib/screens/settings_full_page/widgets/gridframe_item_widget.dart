// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:eternalwallet/core/app_export.dart';

// ignore: must_be_immutable
class GridframeItemWidget extends StatelessWidget {
  final Widget image;
  final Color color;
  final String title;
  GridframeItemWidget({
    required this.image,
    required this.color,
    required this.title,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: getPadding(
      //   // left: 0,
      //   // top: 20,
      //   // right: 0,
      //   // bottom: 20,
      // ),
      // decoration: AppDecoration.fillBlue500.copyWith(
      //   color: color,
      //   borderRadius: BorderRadiusStyle.roundedBorder24,
      // ),
      child: image
      // Column(
      //   // mainAxisSize: MainAxisSize.min,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     image,
      //     Padding(
      //       padding: getPadding(
      //         top: 5,
      //       ),
      //       child: Text(
      //         title,
      //         overflow: TextOverflow.ellipsis,
      //         textAlign: TextAlign.center,
      //         style: AppStyle.txtUrbanistRomanBold16WhiteA700.copyWith(
      //           letterSpacing: getHorizontalSize(
      //             0.2,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
   
    );
  }
}

List SocialLinks = [
  
  {
    "image": CustomImageView(
      imagePath: 'assets/images/twitterr.png',
      // height: getSize(
      //   50,
      // ),
      // width: getSize(
      //   32,
      // ),
    ),
    "title": "twitter",
    "color": Colors.blue[600]
  },
  {
    "image": CustomImageView(
      imagePath: 'assets/images/instagramm.png',
      height: getSize(
        32,
      ),
      width: getSize(
        32,
      ),
    ),
    "title": "twitter",
    "color": Colors.blue[600]
  },
  {
    "image": CustomImageView(
      imagePath: 'assets/images/redditt.png',
      height: getSize(
        32,
      ),
      width: getSize(
        32,
      ),
    ),
    "title": "twitter",
    "color": Colors.blue[600]
  },
  {
    "image": CustomImageView(
      imagePath: 'assets/images/discordd.png',
      height: getSize(
        32,
      ),
      width: getSize(
        32,
      ),
    ),
    "title": "twitter",
    "color": Colors.blue[600]
  },
  {
    "image": CustomImageView(
      imagePath: 'assets/images/youtubee.png',
      height: getSize(
        32,
      ),
      width: getSize(
        32,
      ),
    ),
    "title": "twitter",
    "color": Colors.blue[600]
  },
  {
    "image": CustomImageView(
      imagePath: 'assets/images/telegramm.png',
      height: getSize(
        32,
      ),
      width: getSize(
        32,
      ),
    ),
    "title": "twitter",
    "color": Colors.blue[600]
  },
  
  
  

 
  
];
