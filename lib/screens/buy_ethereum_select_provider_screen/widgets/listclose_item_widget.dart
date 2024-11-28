import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';

// ignore: must_be_immutable
class ListcloseItemWidget extends StatelessWidget {
  final String name;
  final Widget image;
  ListcloseItemWidget({required this.name,required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image,
        Padding(
          padding: getPadding(
            left: 16,
            top: 13,
            bottom: 12,
          ),
          child: Text(
            name,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistSemiBold18.copyWith(
              letterSpacing: getHorizontalSize(
                0.2,
              ),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 12,
            bottom: 13,
          ),
          child: Text(
            "0.074229 ETH",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold18,
          ),
        ),
      ],
    );
  }
}
