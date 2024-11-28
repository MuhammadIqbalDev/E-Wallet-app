
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_image.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';
import 'package:eternalwallet/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';

import '../../bloc/theme_switch_bloc.dart';
import '../../main.dart';
import '../buy_ethereum_set_amount_screen/buy_ethereum_set_amount_screen.dart';
import '../scan_qr_code_screen/scan_qr_code_screen.dart';

ThemeSwitchBloc get checkDark =>
    GlobalContext.appContext!.read<ThemeSwitchBloc>();

// Access the isDark value from the bloc
bool get isDark => checkDark.isDark;

// ignore_for_file: must_be_immutable
class DarkBuyEthereumAddCreditOrDebitCardScreen extends StatefulWidget {
  @override
  State<DarkBuyEthereumAddCreditOrDebitCardScreen> createState() =>
      _DarkBuyEthereumAddCreditOrDebitCardScreenState();
}

class _DarkBuyEthereumAddCreditOrDebitCardScreenState
    extends State<DarkBuyEthereumAddCreditOrDebitCardScreen> {
  TextEditingController cardnumberoneController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  TextEditingController cardnameoneController = TextEditingController();

  TextEditingController cvvoneController = TextEditingController();
  DateTime? date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Add New Card", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return DarkScanQrCodeScreen();
                        }));
                      },
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgIconlylightoutlinescan,
                      margin:
                          getMargin(left: 24, top: 14, right: 24, bottom: 13))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 19, right: 24, bottom: 19),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Card Number",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20),
                      CustomTextFormField(
                        controller: cardnumberoneController,
                        hintText: "7648 4737 4840 2799",
                        margin: getMargin(top: 16),
                        padding: TextFormFieldPadding.PaddingT18_1,
                      ),
                      Padding(
                          padding: getPadding(
                            top: 31,
                          ),
                          child: Text("Card Name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20)),
                      CustomTextFormField(
                        controller: cardnameoneController,
                        hintText: "Andrew Ainsley",
                        margin: getMargin(top: 16),
                        padding: TextFormFieldPadding.PaddingT18_1,
                      ),
                      Padding(
                          padding: getPadding(top: 34),
                          child: Text("Expiration Date",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20)),
                      Container(
                          margin: getMargin(top: 13),
                          padding: getPadding(
                              left: 20, top: 17, right: 20, bottom: 17),
                          decoration: AppDecoration.fillGray90001.copyWith(
                            color: isDark ? ColorConstant.gray800 : ColorConstant.gray50,
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text(
                                        "${DateFormat.yMd().format(date ?? DateTime.now())}",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold16WhiteA700
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                InkWell(
                                    onTap: () async {
                                      
                                      date = (await showRoundedDatePicker(
                                        theme: isDark ? ThemeData.dark(
                                          
                                        ) : ThemeData(
                                          primarySwatch: orangeSwatch,
                        
                                        ),
                                        
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate:
                                            DateTime(DateTime.now().year - 1),
                                        lastDate:
                                            DateTime(DateTime.now().year + 1),
                                        borderRadius: 16,
                                      ));
                                      setState(() {
                                        
                                      });
                                    },
                                    child: CustomIcon(
                                        size: 22,
                                        icon: Icons.calendar_month_rounded))
                              ])),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Text("CVV",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20)),
                      CustomTextFormField(
                          padding: TextFormFieldPadding.PaddingT18_1,
                          controller: cvvoneController,
                          hintText: "755",
                          margin: getMargin(top: 16, bottom: 5),
                          textInputAction: TextInputAction.done)
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                // decoration: AppDecoration.outlineGray8001,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: 45,
                          variant: ButtonVariant.FillOrange400,
                          fontStyle: ButtonFontStyle.UrbanistRomanBold18,
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return DarkBuyEthereumSetAmountScreen(isCompeleted: true,);
                            }));
                          },
                          text: "Continue")
                    ]))));
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
final MaterialColor orangeSwatch = MaterialColor(
    ColorConstant.orange400.value,
    <int, Color>{
      50: ColorConstant.orange400,
      100: ColorConstant.orange400,
      200: ColorConstant.orange400,
      300: ColorConstant.orange400,
      400: ColorConstant.orange400,
      500: ColorConstant.orange400,
      600: ColorConstant.orange400,
      700: ColorConstant.orange400,
      800: ColorConstant.orange400,
      900: ColorConstant.orange400,
    },
  );
