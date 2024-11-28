import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';

// ignore: must_be_immutable
class SlidernameItemWidget extends StatelessWidget {
  SlidernameItemWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            400,
          ),
          child: Text(
            "Best Crypto Wallet App Today",
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtUrbanistRomanBold48,
          ),
        ),
        Container(
          width: getHorizontalSize(
            329,
          ),
          margin: getMargin(
            left: 2,
            top: 11,
            right: 2,
          ),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtUrbanistRomanMedium18.copyWith(
              letterSpacing: getHorizontalSize(
                0.2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
