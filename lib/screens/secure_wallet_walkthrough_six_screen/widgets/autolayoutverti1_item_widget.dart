import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';


// ignore: must_be_immutable
class Autolayoutverti1ItemWidget extends StatelessWidget {
  Autolayoutverti1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: getHorizontalSize(
            103,
          ),
          padding: getPadding(
            left: 30,
            top: 11,
            right: 35,
            bottom: 11,
          ),
          decoration: AppDecoration.txtFillGray800.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder22,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold18.copyWith(
              letterSpacing: getHorizontalSize(
                0.2,
              ),
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            103,
          ),
          padding: getPadding(
            left: 30,
            top: 7,
            right: 31,
            bottom: 7,
          ),
          decoration: AppDecoration.txtFillGray800.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder22,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold18.copyWith(
              letterSpacing: getHorizontalSize(
                0.2,
              ),
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            102,
          ),
          padding: getPadding(
            left: 25,
            top: 11,
            right: 25,
            bottom: 11,
          ),
          decoration: AppDecoration.txtFillGray800.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder22,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold18.copyWith(
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
