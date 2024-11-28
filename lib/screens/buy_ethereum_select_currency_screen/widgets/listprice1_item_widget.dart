import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';

// ignore: must_be_immutable
class Listprice1ItemWidget extends StatelessWidget {
  Listprice1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: getPadding(
            bottom: 1,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold20,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 12,
            top: 1,
          ),
          child: Text(
            "-",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold20,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 12,
            bottom: 1,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold20,
          ),
        ),
      ],
    );
  }
}
