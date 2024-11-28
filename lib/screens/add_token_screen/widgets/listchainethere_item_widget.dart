// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/custom_switch.dart';

import '../../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';

// ignore: must_be_immutable
class ListchainethereItemWidget extends StatefulWidget {
  final String name;
  final Widget image;
  ListchainethereItemWidget(
   
   {required this.name,
    required this.image,}
  ) : super();

  @override
  State<ListchainethereItemWidget> createState() =>
      _ListchainethereItemWidgetState();
}

class _ListchainethereItemWidgetState extends State<ListchainethereItemWidget> {
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        widget.image,
        Padding(
          padding: getPadding(
            left: 20,
            top: 11,
            bottom: 12,
          ),
          child: Text(
            widget.name,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold20,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 8,
            top: 12,
            bottom: 12,
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
            setState(() {
              isSelectedSwitch = value;
            });
          },
        ),
      ],
    );
  }
}
