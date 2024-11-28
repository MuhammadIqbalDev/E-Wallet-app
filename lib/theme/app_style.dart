import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme_switch_bloc.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';
import '../main.dart';

class AppStyle{
 

  static TextStyle textStyleSajjad = TextStyle(
    color: isDark ? ColorConstant.white :ColorConstant.orange400,
    fontSize: 35,
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );
  static TextStyle txtUrbanistRomanBold56 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      56,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle get txtUrbanistRomanBold20 => TextStyle(
    color: isDark ? ColorConstant.whiteA700 : ColorConstant.gray900,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtUrbanistRomanBold24Orange400 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle get txtUrbanistRomanBold24 => TextStyle(
    color:isDark ? ColorConstant.whiteA700 : ColorConstant.gray900,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle get txtUrbanistRomanMedium18 => TextStyle(
    color: isDark ? ColorConstant.gray300 : ColorConstant.gray900,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
  );

  static TextStyle get txtUrbanistSemiBold14 => TextStyle(
    color: isDark ? ColorConstant.gray300 : ColorConstant.gray500,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w600,
  );

  static TextStyle get txtUrbanistRegular16 => TextStyle(
    color:isDark ?  ColorConstant.whiteA700 : ColorConstant.gray800,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w400,
  );

  static TextStyle get txtUrbanistSemiBold16 => TextStyle(
    color: isDark ? ColorConstant.gray300 : ColorConstant.gray900,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w600,
  );
 static ThemeSwitchBloc get checkDark =>
      GlobalContext.appContext!.read<ThemeSwitchBloc>();

  // Access the isDark value from the bloc
  static bool get isDark => checkDark.isDark;

  static TextStyle txtUrbanistSemiBold16WhiteA700 = TextStyle(
    color: isDark ? ColorConstant.whiteA700 : ColorConstant.gray900,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtRobotoRegular16 = TextStyle(
    color: ColorConstant.blueGray400,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  static TextStyle get txtUrbanistSemiBold18 => TextStyle(
    color: isDark ? ColorConstant.whiteA700 : ColorConstant.gray800,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtUrbanistSemiBold14Orange400 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w600,
  );

  static TextStyle get txtUrbanistRomanMedium14 => TextStyle(
    color: isDark ? ColorConstant.gray300: ColorConstant.gray800,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
  );

  static TextStyle get txtUrbanistRomanBold18 => TextStyle(
    color: isDark ? ColorConstant.whiteA700 : ColorConstant.gray900,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle get txtRobotoRegular20 => TextStyle(
    color:!isDark ? ColorConstant.black900 : ColorConstant.white,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );
  static TextStyle txtUrbanistSemiBold18Orange400 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtUrbanistRomanBold48 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: 35,
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );
  static TextStyle txtnumberUrbanistRomanBold48 = TextStyle(
    color: ColorConstant.white,
    fontSize: 35,
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtUrbanistRomanBold24RedA200 = TextStyle(
    color: ColorConstant.redA200,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle get txtUrbanistRomanBold16Gray50 => TextStyle(
    color: isDark? ColorConstant.gray50 : ColorConstant.gray800,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtUrbanistRomanMedium14WhiteA700 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
  );

  static TextStyle txtUrbanistRomanMedium12RedA200 = TextStyle(
    color: ColorConstant.redA200,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
  );

  static TextStyle get txtUrbanistRegular18 => TextStyle(
    color: isDark ? ColorConstant.whiteA700 : ColorConstant.gray800,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtUrbanistRomanBold48Orange400 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      48,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle get txtUrbanistRomanMedium16 => TextStyle(
    color:isDark ? ColorConstant.gray300 : ColorConstant.gray800,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
  );

  static TextStyle get txtUrbanistRomanMedium18Gray300 => TextStyle(
    color: isDark ? ColorConstant.gray300 : ColorConstant.gray900,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
  );

  static TextStyle txtUrbanistRomanMedium12 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
  );

  static TextStyle get txtUrbanistRomanMedium12WhiteA700 => TextStyle(
    color: isDark ? ColorConstant.whiteA700 : ColorConstant.gray900,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
  );

  static TextStyle get txtUrbanistRomanBold32 => TextStyle(
    color: isDark ? ColorConstant.whiteA700 : ColorConstant.gray900,
    fontSize: getFontSize(
      32,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle get txtUrbanistRomanBold16 => TextStyle(
    color: isDark ? ColorConstant.whiteA700 : ColorConstant.gray800,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtUrbanistSemiBold18Gray400 = TextStyle(
    color: ColorConstant.gray400,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtUrbanistRegular16Gray500 = TextStyle(
    color: ColorConstant.gray500,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtUrbanistRomanBold20Orange400 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle get txtUrbanistRomanBold18Gray300 => TextStyle(
    color:isDark ? ColorConstant.gray300 : ColorConstant.gray900, 
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtUrbanistRomanBold24Gray300 = TextStyle(
    color: ColorConstant.gray300,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtUrbanistSemiBold14Gray30099 = TextStyle(
    color: ColorConstant.gray30099,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtUrbanistRomanBold20Gray300 = TextStyle(
    color: ColorConstant.gray300,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtUrbanistRomanBold16Orange400 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtUrbanistRomanMedium10 = TextStyle(
    color: ColorConstant.gray500,
    fontSize: getFontSize(
      10,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
  );

  static TextStyle txtUrbanistRomanBold10 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      10,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtUrbanistRomanBold14 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );
  static TextStyle get txtUrbanistRomanBold14b => TextStyle(
    color: isDark ? ColorConstant.whiteA700 : ColorConstant.gray700,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtUrbanistRomanMedium12Orange400 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
  );

  static TextStyle txtUrbanistRomanBold18Orange400 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );
  static TextStyle get txtUrbanistRomanBold18Orange400b =>TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      30,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtUrbanistSemiBold16Orange400 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtUrbanistRomanBold16WhiteA700 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtUrbanistRomanMedium18Orange400 = TextStyle(
    color: ColorConstant.orange400,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
  );
}


