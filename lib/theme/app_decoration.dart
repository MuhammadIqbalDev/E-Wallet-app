import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme_switch_bloc.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';
import '../main.dart';

class AppDecoration {
  static BoxDecoration get gradientRedA20001PinkA100 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            ColorConstant.redA20001,
            ColorConstant.pinkA100,
          ],
        ),
        
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color:isDark ?  ColorConstant.gray900 : ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineOrange400 => BoxDecoration(
        color: ColorConstant.amber50014,
        border: Border.all(
          color: ColorConstant.orange400,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineGray8002 => BoxDecoration(
        color: isDark ? ColorConstant.gray90001 : ColorConstant.whiteA700,
        border: Border.all(
          // color: ColorConstant.gray800,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outline => BoxDecoration(
    border: Border.all(
          color: isDark ? ColorConstant.gray800 : ColorConstant.white,
          width: getHorizontalSize(
            1,
          ),
        )
  );
  static BoxDecoration get outlineGray8001 => BoxDecoration(
        border: Border.all(
          color: isDark ?  ColorConstant.gray800 : ColorConstant.gray300,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get gradientOrangeA200Orange40001 => BoxDecoration(
        gradient: LinearGradient(
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
        ),
        border: Border.all(
          color: ColorConstant.orange400,
          width: getHorizontalSize(
            2,
          ),
        ),
      );
  static BoxDecoration get fillGray90001 => BoxDecoration(
        color:  isDark ?  ColorConstant.gray90001 : ColorConstant.gray300,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color:  ColorConstant.whiteA700,
      );
  static BoxDecoration get fillWhiteDialog => BoxDecoration(
        color: isDark ? ColorConstant.gray900 :  ColorConstant.white,
      );
  static BoxDecoration get allgreyBorder => BoxDecoration(
      border: Border.all(color: isDark ? ColorConstant.gray800 : ColorConstant.gray300),
      borderRadius: BorderRadius.circular(15));
  static BoxDecoration get outlineGray800 => BoxDecoration(
        // color: ColorConstant.gray900,
        border: Border(
          top: BorderSide(
            // color: ColorConstant.gray800,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA7000f => BoxDecoration(
        color: isDark ? ColorConstant.gray90066 : Colors.white.withOpacity(0.5) , 
        border: Border.all(
          color: ColorConstant.whiteA7000f,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGray90099 => BoxDecoration(
        color: ColorConstant.gray90099,
      );

  static BoxDecoration get txtFillGray800 => BoxDecoration(
        color: isDark ? ColorConstant.gray800 : ColorConstant.gray300,
      );

  static BoxDecoration get fillGray800 => BoxDecoration(
        color: ColorConstant.gray800,
      );

  static BoxDecoration get txtOutlineOrange400 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.orange400,
          width: getHorizontalSize(
            2,
          ),
        ),
      );

 static ThemeSwitchBloc get checkDark =>
      GlobalContext.appContext!.read<ThemeSwitchBloc>();

  // Access the isDark value from the bloc
  static bool get isDark => checkDark.isDark;

  
  static BoxDecoration get txtFillGray900 {
    log(isDark.toString());
    return BoxDecoration(
      color: isDark ? ColorConstant.gray900 : ColorConstant.white,
    );
  }

  static BoxDecoration get fillYellow70033 => BoxDecoration(
        color: ColorConstant.yellow70033,
      );
  static BoxDecoration get fillIndigoA200 => BoxDecoration(
        color: ColorConstant.indigoA200,
      );

  static BoxDecoration get fillBlue500 => BoxDecoration(
        color: ColorConstant.blue500,
      );
  static BoxDecoration get fillBlue600 => BoxDecoration(
        color: ColorConstant.blue600,
      );
  static BoxDecoration get outlineBlack9000c => BoxDecoration(
        color: isDark ? ColorConstant.gray90001 : ColorConstant.gray50,
        
      );
  static BoxDecoration get fillPink500 => BoxDecoration(
        color: ColorConstant.pink500,
      );
  static BoxDecoration get fillRed600 => BoxDecoration(
        color: ColorConstant.red600,
      );
  static BoxDecoration get fillDeeporangeA400 => BoxDecoration(
        color: ColorConstant.deepOrangeA400,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius txtCircleBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius roundedBorder48 = BorderRadius.circular(
    getHorizontalSize(
      48,
    ),
  );

  static BorderRadius roundedBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius roundedBorder70 = BorderRadius.circular(
    getHorizontalSize(
      70,
    ),
  );
  static BorderRadius circleBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius customBorderTL48 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        48,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        48,
      ),
    ),
  );

  static BorderRadius circleBorder50 = BorderRadius.circular(
    getHorizontalSize(
      50,
    ),
  );

  static BorderRadius roundedBorder22 = BorderRadius.circular(
    getHorizontalSize(
      22,
    ),
  );

  static BorderRadius txtRoundedBorder22 = BorderRadius.circular(
    getHorizontalSize(
      22,
    ),
  );

  static BorderRadius roundedBorder40 = BorderRadius.circular(
    getHorizontalSize(
      40,
    ),
  );

  static BorderRadius customBorderTL60 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        60,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        60,
      ),
    ),
  );

  static BorderRadius roundedBorder28 = BorderRadius.circular(
    getHorizontalSize(
      28,
    ),
  );

  static BorderRadius txtRoundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineGray800 => BoxDecoration(
        color: ColorConstant.gray90001,
        border: Border.all(
          color: ColorConstant.gray800,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BorderRadius customBorderTL44 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        44,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        44,
      ),
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
