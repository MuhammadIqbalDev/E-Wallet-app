import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme_switch_bloc.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';
import '../main.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator,
      this.onChanged});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? autofocus;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  bool? isOther;

  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(hintstyle: 1),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        onChanged: onChanged ?? (Value) {},
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(hintstyle: 0),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle({int? hintstyle = 0}) {
    switch (fontStyle) {
      case TextFormFieldFontStyle.DropDownTextField:
        return TextStyle(
          color: !isDark ? ColorConstant.gray900 : ColorConstant.white
        );

      case TextFormFieldFontStyle.UrbanistRomanBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: isDark
              ? ((hintstyle != 0 ? Colors.white : ColorConstant.gray400))
              : (hintstyle != 0
                  ? ColorConstant.gray900
                  : ColorConstant.gray400),
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.CircleBorder29:
        return BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.FillGray400:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineOrangeA2003f:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  static ThemeSwitchBloc get checkDark =>
      GlobalContext.appContext!.read<ThemeSwitchBloc>();

  // Access the isDark value from the bloc
  static bool get isDark => checkDark.isDark;
  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillGray400:
        return isDark ? ColorConstant.gray900 : ColorConstant.gray300;
      default:
        return isDark ? ColorConstant.gray90001 : ColorConstant.gray50;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.FillGray400:
        return true;
      case TextFormFieldVariant.OutlineOrangeA2003f:
        return false;
      case TextFormFieldVariant.UnderLineGray800:
        return false;
      case TextFormFieldVariant.UnderLineGray800_1:
        return false;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT18:
        return getPadding(
          left: 18,
          top: 18,
          bottom: 18,
        );
      case TextFormFieldPadding.PaddingT18_1:
        return getPadding(
          left: 16,
          top: 18,
          right: 16,
          bottom: 18,
        );
      case TextFormFieldPadding.PaddingT40:
        return getPadding(
          left: 20,
          top: 40,
          bottom: 40,
        );
      default:
        return getPadding(
          top: 18,
          bottom: 18,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder16,
  CircleBorder29,
}

enum TextFormFieldPadding {
  PaddingT18,
  PaddingT18_1,
  PaddingT40,
  PaddingAll18,
}

enum TextFormFieldVariant {
  None,
  FillGray90001,
  FillGray400,
  OutlineOrangeA2003f,
  UnderLineGray800,
  UnderLineGray800_1,
}

enum TextFormFieldFontStyle {
  UrbanistRegular16,
  UrbanistRomanBold16,
  UrbanistSemiBold18,
  DropDownTextField
}
