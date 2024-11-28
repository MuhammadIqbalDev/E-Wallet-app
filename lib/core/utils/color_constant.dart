import 'package:flutter/material.dart';


// bool isDark = false;

class ColorConstant {
  
  static Color orange50014 = fromHex('#14ff9800');
  static Color white = Colors.white;
  static Color red600 = fromHex('#ee2e24');

  static Color orangeA2003f = fromHex('#3fff983b');

  static Color indigoA40014 = fromHex('#144353ff');

  static Color indigoA200 = fromHex('#5869eb');

  static Color yellow70033 = fromHex('#33ffc02d');

  static Color gray50 = fromHex('#f9f9f9');

  static Color gray30099 = fromHex('#99e0e0e0');

  static Color black900 = fromHex('#000000');

  static Color pink500 = fromHex('#ea1e61');

  static Color deepOrangeA400 = fromHex('#ff4500');

  static Color purple50014 = fromHex('#149c27b0');

  static Color gray600 = fromHex('#757575');

  static Color gray700 = fromHex('#616161');

  static Color gray400 = fromHex('#bdbdbd');

  static Color orangeA200 = fromHex('#ff983b');

  static Color gray500 = fromHex('#9e9e9e');

  static Color blueGray400 = fromHex('#888888');

  static Color gray800 = fromHex('#35383f');

  static Color amber50014 = fromHex('#14facc15');

  static Color redA200 = fromHex('#f75555');

  static Color blue500 = fromHex('#1d9bf0');

  static Color gray900 = fromHex('#181a20');

  static Color gray90001 = fromHex('#1f222a');

  static Color blue600 = fromHex('#1c9dd9');

  static Color yellow50 = fromHex('#fffbe6');

  static Color orange400 = fromHex('#ff981f');

  static Color black9000c = fromHex('#0c04060f');

  static Color gray300 = fromHex('#e0e0e0');

  static Color gray900D8 = fromHex('#d8181a20');

  static Color orange40001 = fromHex('#ffac1b');

  static Color redA20014 = fromHex('#14f75555');

  static Color black90014 = fromHex('#1404060f');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray90099 = fromHex('#9909101d');

  static Color yellow400 = fromHex('#ffe566');

  static Color gray90066 = fromHex('#66181a20');

  static Color whiteA7000f = fromHex('#0fffffff');

  static Color gray30090 = fromHex('#90e0e0e0');

  static Color pinkA100 = fromHex('#ff8a9b');

  static Color redA20001 = fromHex('#ff4d67');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorConstant.orange50014,
      scaffoldBackgroundColor: Color.fromARGB(255, 253, 253, 253),
      // primaryTextTheme: TextTheme()

      );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: ColorConstant.orange50014,
      scaffoldBackgroundColor: ColorConstant.gray900);
}
