import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListchaintetherItemWidget extends StatelessWidget {
  ListchaintetherItemWidget();

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgChaintetherusdt,
          height: getSize(
            48,
          ),
          width: getSize(
            48,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 20,
            top: 11,
            bottom: 12,
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
            left: 8,
            top: 12,
            bottom: 11,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold20Gray300,
          ),
        ),
        Spacer(),
        CustomSwitch(
          margin: getMargin(
            top: 12,
            bottom: 12,
          ),
          value: isSelectedSwitch,
          onChanged: (value) {
            isSelectedSwitch = value;
          },
        ),
      ],
    );
  }
}
