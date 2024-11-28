
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';
import '../screens/buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged,this.ontap});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function()? ontap;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(24),
        width: getHorizontalSize(60),
        toggleSize: 24,
        borderRadius: getHorizontalSize(
          12.00,
        ),
        activeColor: ColorConstant.orange40001,
        activeToggleColor:  ColorConstant.whiteA700,
        inactiveColor: isDark ? ColorConstant.gray800 : ColorConstant.gray300,
        inactiveToggleColor: ColorConstant.whiteA700,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
