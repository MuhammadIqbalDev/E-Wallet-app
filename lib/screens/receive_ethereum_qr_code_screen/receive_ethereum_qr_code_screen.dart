import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/color_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';
import '../../bloc/theme_switch_bloc.dart';
import '../../core/utils/image_constant.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../receive_ethereum_set_amount_bottomsheet/receive_ethereum_set_amount_bottomsheet.dart';
import '../receive_ethereum_share_qr_code_bottomsheet/receive_ethereum_share_qr_code_bottomsheet.dart';

class DarkReceiveEthereumQrCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        bool isDark = state.isDarkTheme;
        return Scaffold(
          appBar: CustomAppBar(
              height: getVerticalSize(56),
              leadingWidth: 52,
              leading: GotoBack(context),
              title: AppbarTitle(
                  text: "Receive ETH", margin: getMargin(left: 16))),
          body: Container(
              margin: getMargin(top: 19),
              padding: getPadding(left: 24, right: 24),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                CustomImageView(
                    svgPath: ImageConstant.imgMail,
                    height: getVerticalSize(99),
                    width: getHorizontalSize(61)),
                Padding(
                    padding: getPadding(top: 16),
                    child: Divider(
                        height: getVerticalSize(1),
                        thickness: getVerticalSize(1),
                        color: isDark
                            ? ColorConstant.gray800
                            : ColorConstant.gray300)),
                Container(
                    width: double.maxFinite,
                    child: Container(
                        margin: getMargin(top: 15),
                        padding: getPadding(all: 23),
                        decoration: AppDecoration.fillGray900,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  color: isDark
                                      ? ColorConstant.whiteA700
                                      : ColorConstant.gray900,
                                  fit: BoxFit.fill,
                                  imagePath: ImageConstant.qrcode,
                                  height: getSize(332),
                                  width: getSize(332))
                            ]))),
                Padding(
                    padding: getPadding(top: 18),
                    child: Text("0x7131CA84856767fjfh8sjhqak8s88848f8E696",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold16
                            .copyWith(letterSpacing: getHorizontalSize(0.2)))),
                Padding(
                    padding: getPadding(top: 15),
                    child: Divider(
                        height: getVerticalSize(1),
                        thickness: getVerticalSize(1),
                        color: isDark
                            ? ColorConstant.gray800
                            : ColorConstant.gray300)),
                Container(
                    width: getHorizontalSize(346),
                    margin: getMargin(left: 16, top: 16, right: 16),
                    child: Text(
                        "Send only Ethereum (ETH) to this address.\nSending any other coins may result in permanent loss.",
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtUrbanistRomanMedium14WhiteA700
                            .copyWith(letterSpacing: getHorizontalSize(0.2))))
              ])),
          bottomNavigationBar: Padding(
              padding: getPadding(left: 20, right: 20, bottom: 20),
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconButton(
                              height: 60,
                              width: 60,
                              variant: IconButtonVariant.FillAmber50014,
                              child: CustomImageView(
                                  onTap: () async {
                                    await Clipboard.setData(ClipboardData(
                                        text:
                                            "0x7131CA84856767fjfh8sjhqak8s88848f8E696"));
                                    showSnackBar(context,
                                        "Text Copied : \n 0x7131CA84856767fjfh8sjhqak8s88848f8E69 ");
                                  },
                                  imagePath:
                                      ImageConstant.imgAutolayouthorizontal9)),
                          Padding(
                              padding: getPadding(top: 15),
                              child: Text("Copy",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold16Gray50
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))))
                        ]),
                    Padding(
                        padding: getPadding(left: 38, bottom: 1),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  onTap: () async {
                                    await showModalBottomSheet(
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        isScrollControlled: true,
                                        builder: (context) {
                                          return DarkReceiveEthereumSetAmountBottomsheet();
                                        });
                                  },
                                  height: 60,
                                  width: 60,
                                  variant: IconButtonVariant.FillAmber50014,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.cutcake)),
                              Padding(
                                  padding: getPadding(top: 13),
                                  child: Text("Set Amount",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanBold16Gray50
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2))))
                            ])),
                    Padding(
                        padding: getPadding(left: 38, bottom: 1),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  onTap: () async {
                                    await showModalBottomSheet(
                                        backgroundColor: Colors.transparent,
                                        // barrierColor: ColorConstant.black900,
                                        context: context,
                                        builder: (context) {
                                          return DarkReceiveEthereumShareQrCodeBottomsheet();
                                        });
                                  },
                                  height: 60,
                                  width: 60,
                                  variant: IconButtonVariant.FillAmber50014,
                                  child: CustomImageView(
                                      svgPath: ImageConstant
                                          .imgAutolayouthorizontal12)),
                              Padding(
                                  padding: getPadding(top: 13),
                                  child: Text("Share",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanBold16Gray50
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2))))
                            ])),
                  ])),
        );
      },
    ));
  }

  onTapArrowleft9(BuildContext context) {
    Navigator.pop(context);
  }
}

void showSnackBar(BuildContext context, String text) {
  final snackBar = SnackBar(
    content: Text(text),
    backgroundColor: ColorConstant.orange400,
    behavior: SnackBarBehavior.floating,
    action: SnackBarAction(
      backgroundColor: isDark ? ColorConstant.gray800 : ColorConstant.white,
      label: 'Dismiss',
      textColor: ColorConstant.orange400,
      // textColor: ColorConstant.whiteA700,
      onPressed: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
    ),
    onVisible: () {},
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
