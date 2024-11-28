

// ignore: must_be_immutable
import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';

class SlideryoursecurItemWidget extends StatelessWidget {
  SlideryoursecurItemWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            355,
          ),
          child: Text(
            "Your Security is Our Top Priority",
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
            left: 12,
            top: 11,
            right: 12,
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
