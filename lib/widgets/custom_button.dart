import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme_switch_bloc.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';
import '../main.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  static ThemeSwitchBloc get checkDark =>
      GlobalContext.appContext!.read<ThemeSwitchBloc>();

  // Access the isDark value from the bloc
  static bool get isDark => checkDark.isDark;
  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonChildWidget(),
      ),
    );
  }

  _buildButtonChildWidget() {
    if (checkGradient()) {
      return Container(
        width: width ?? double.maxFinite,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: _buildButtonWithOrWithoutIcon(),
      );
    } else {
      return _buildButtonWithOrWithoutIcon();
    }
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildDecoration() {
    return BoxDecoration(
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      // boxShadow: _setBoxShadow(),
    );
  }

  _buildTextButtonStyle() {
    if (checkGradient()) {
      return TextButton.styleFrom(
        padding: EdgeInsets.zero,
      );
    } else {
      return TextButton.styleFrom(
        fixedSize: Size(
          width ?? double.maxFinite,
          height ?? getVerticalSize(40),
        ),
        padding: _setPadding(),
        backgroundColor: _setColor(),
        shadowColor: _setTextButtonShadowColor(),
        shape: RoundedRectangleBorder(
          borderRadius: _setBorderRadius(),
        ),
      );
    }
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT18:
        return getPadding(
          left: 16,
          top: 18,
          right: 16,
          bottom: 18,
        );
      case ButtonPadding.PaddingT11:
        return getPadding(
          top: 11,
          right: 11,
          bottom: 11,
        );
      case ButtonPadding.PaddingAll19:
        return getPadding(
          all: 19,
        );
      default:
        return getPadding(
          all: 11,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.fillgrayAndwhite:
        return isDark ? ColorConstant.gray800 : ColorConstant.gray300;
      case ButtonVariant.FillGray400:
        return ColorConstant.gray400;
      case ButtonVariant.FillOrange400:
        return ColorConstant.orange400;
      case ButtonVariant.FillAmber50014:
        return isDark ? ColorConstant.gray800 : ColorConstant.amber50014;
      case ButtonVariant.FillGray90001:
        return ColorConstant.gray90001;
      case ButtonVariant.OutlineOrangeA2003f:
      case ButtonVariant.OutlineOrange400:
      case ButtonVariant.GradientOrangeA200Orange40001:
        return null;
      case ButtonVariant.FillOrange400:
        return ColorConstant.orange400;
      case ButtonVariant.FillGray400:
        return ColorConstant.gray400;
      case ButtonVariant.OutlineOrangeA2003f:
      case ButtonVariant.GradientOrangeA200Orange40001:
        return null;
      default:
        return ColorConstant.gray800;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineOrangeA2003f:
        return ColorConstant.orangeA2003f;
      case ButtonVariant.FillGray800:
      case ButtonVariant.FillOrange400:
      case ButtonVariant.FillGray400:
      case ButtonVariant.GradientOrangeA200Orange40001:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder29:
        return BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(10);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.UrbanistRomanBold16b:
        return TextStyle(
          color: ColorConstant.orange400,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistRomanBold16:
        return TextStyle(
          color: isDark ? ColorConstant.whiteA700 : ColorConstant.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistRomanBold18Orange400:
        return TextStyle(
          color: isDark ? ColorConstant.whiteA700 : ColorConstant.orange400,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistRomanBold18:
        return TextStyle(
          color: !isDark ? ColorConstant.whiteA700 : ColorConstant.gray900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UrbanistRomanBold18b:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
    }
  }

  checkGradient() {
    switch (variant) {
      case ButtonVariant.OutlineOrangeA2003f:
      case ButtonVariant.GradientOrangeA200Orange40001:
        return true;
      default:
        return false;
    }
  }

  _setGradient() {
    switch (variant) {
      case ButtonVariant.OutlineOrangeA2003f:
        return LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            ColorConstant.orangeA200,
            ColorConstant.orange40001,
          ],
        );
      case ButtonVariant.GradientOrangeA200Orange40001:
        return LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            ColorConstant.orangeA200,
            ColorConstant.orange40001,
          ],
        );
      case ButtonVariant.FillGray800:
      case ButtonVariant.FillOrange400:
      case ButtonVariant.FillGray400:
      case ButtonVariant.FillGray800:
      case ButtonVariant.FillGray400:
      case ButtonVariant.FillOrange400:
      case ButtonVariant.OutlineOrange400:
      case ButtonVariant.FillAmber50014:
      case ButtonVariant.FillGray90001:
        return null;
      default:
        return null;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineOrange400:
        return Border.all(
          color: ColorConstant.orange400,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineOrangeA2003f:
      case ButtonVariant.FillGray800:
      case ButtonVariant.FillGray400:
      case ButtonVariant.FillOrange400:
      case ButtonVariant.GradientOrangeA200Orange40001:
      case ButtonVariant.FillAmber50014:
      case ButtonVariant.FillGray90001:
        return null;
      default:
        return null;
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineOrangeA2003f:
        return [
          BoxShadow(
            color: ColorConstant.orangeA2003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              4,
              8,
            ),
          ),
        ];
      case ButtonVariant.FillGray800:
      case ButtonVariant.FillOrange400:
      case ButtonVariant.FillGray400:
      case ButtonVariant.FillGray800:
      case ButtonVariant.FillGray400:
      case ButtonVariant.FillOrange400:
      case ButtonVariant.OutlineOrange400:
      case ButtonVariant.GradientOrangeA200Orange40001:
      case ButtonVariant.FillAmber50014:
      case ButtonVariant.FillGray90001:
        return null;
      case ButtonVariant.GradientOrangeA200Orange40001:
        return null;
      default:
        return null;
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder22,
  CircleBorder29,
  RoundedBorder6,
  RoundedBorder16,
}

enum ButtonPadding {
  PaddingAll11,
  PaddingT18,
  PaddingT11,
  PaddingAll19,
  PaddingT11_1,
  PaddingAll6,
}

enum ButtonVariant {
  FillGray800,
  OutlineOrangeA2003f,
  FillOrange400,
  FillGray400,
  fillgrayAndwhite,
  GradientOrangeA200Orange40001,
  OutlineOrange400,
  FillAmber50014,
  FillGray90001,
}

enum ButtonFontStyle {
  UrbanistRomanBold18b,
  UrbanistRomanBold18,
  UrbanistRomanBold16,
  UrbanistRomanBold16b,
  UrbanistRomanBold18Orange400,
  UrbanistSemiBold10,
  UrbanistSemiBold10Orange400,
  UrbanistSemiBold16,
  UrbanistSemiBold14,
  UrbanistSemiBold14Orange400,
}
