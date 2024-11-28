import 'package:eternalwallet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Gridtype1ItemWidget extends StatelessWidget {
  Gridtype1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 14,
      ),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage154x154,
            height: getSize(
              154,
            ),
            width: getSize(
              154,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                20,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 11,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold18,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 11,
              bottom: 1,
            ),
            child: Row(
              children: [
                Text(
                  "Nekochimin",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanMedium12.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgCheckmark,
                  height: getSize(
                    14,
                  ),
                  width: getSize(
                    14,
                  ),
                  margin: getMargin(
                    left: 4,
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
