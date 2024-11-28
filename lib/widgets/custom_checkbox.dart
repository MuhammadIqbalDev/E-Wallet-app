import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class CustomCheckbox extends StatelessWidget {
  CustomCheckbox(
      {this.fontStyle,
      this.alignment,
      this.isRightCheck = false,
      this.iconSize,
      this.value,
      this.onChange,
      this.text,
      this.width,
      this.margin});

  CheckboxFontStyle? fontStyle;

  Alignment? alignment;

  bool? isRightCheck;

  double? iconSize;

  bool? value;

  Function(bool)? onChange;

  Widget? text;

  double? width;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildCheckboxWidget(),
          )
        : _buildCheckboxWidget();
  }

  _buildCheckboxWidget() {
    return getLeftSideCheckbox();
  }

  Widget getRightSideCheckbox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 8,
          ),
          child: text ?? SizedBox(),
        ),
        getCheckboxWidget(),
      ],
    );
  }

  Widget getLeftSideCheckbox() {
    return Row(
      children: [
        getCheckboxWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 8,
          ),
          child: text ?? SizedBox(),
        ),
      ],
    );
  }

  // Widget getTextWidget() {
  //   return Conta(
  //     text ?? SizedBox(),
  //     textAlign: TextAlign.center,
  //     style: _setFontStyle(),
  //   );
  // }

  Widget getCheckboxWidget() {
    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: Checkbox(
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5), // Remove the padding by setting borderRadius to zero
    
    ),
  side: BorderSide(color: ColorConstant.orange40001),
    focusColor: ColorConstant.orange40001,
    activeColor: ColorConstant.orange40001,
    // checkColor: ColorConstant.orange40001,
  value: value ?? false ,
  onChanged:  (value) {
          onChange!(value!);
        }, 
)
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum CheckboxFontStyle { UrbanistSemiBold16 }
