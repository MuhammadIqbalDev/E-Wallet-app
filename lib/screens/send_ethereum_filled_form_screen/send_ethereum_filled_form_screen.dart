import 'package:eternalwallet/screens/scan_qr_code_screen/scan_qr_code_screen.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import '../send_ethereum_confirm_screen/send_ethereum_confirm_screen.dart';

class DarkSendEthereumFilledFormScreen extends StatefulWidget {
  @override
  State<DarkSendEthereumFilledFormScreen> createState() =>
      _DarkSendEthereumFilledFormScreenState();
}

class _DarkSendEthereumFilledFormScreenState
    extends State<DarkSendEthereumFilledFormScreen> {
  TextEditingController aggress = TextEditingController();
  TextEditingController amount = TextEditingController();
  int total = 0;
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
                    text: "Send Ethereum", margin: getMargin(left: 16)),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomIcon(
                      size: 23,
                      icon: Icons.more_horiz_outlined,
                      isCircle: true,
                    ),
                  )
                ]),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomTextFormField(
                          padding: TextFormFieldPadding.PaddingT18_1,
                          controller: aggress,
                          hintText: "Reciept Address",
                          margin: getMargin(top: 16),
                          suffix: Container(
                            width: getVerticalSize(80),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () async {
                                    ClipboardData? cdata =
                                        await Clipboard.getData(
                                            Clipboard.kTextPlain);
                                    if (cdata != null) {
                                      if (cdata.text != null) {
                                        if (cdata.text!.isNotEmpty) {
                                          setState(() {
                                            aggress.text = cdata.text!;
                                          });
                                        }
                                      }
                                    }
                                  },
                                  child: Text("Paste",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistSemiBold14Orange400
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2))),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return DarkScanQrCodeScreen(getpop: true,);
                                    }));
                                  },
                                  child: CustomImageView(
                                      svgPath: ImageConstant
                                          .imgIconlylightoutlinescanOrange400,
                                      height: getSize(20),
                                      width: getSize(20),
                                      margin: getMargin(left: 12)),
                                )
                              ],
                            ),
                          ),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                        ),
                        CustomTextFormField(
                          padding: TextFormFieldPadding.PaddingT18_1,
                          controller: amount,
                          hintText: "Amount ETH",
                          textInputType: TextInputType.number,
                          margin: getMargin(top: 16),
                          suffix: InkWell(
                            onTap: () {},
                            child: Container(
                              width: getVerticalSize(50),
                              child: Text("Max",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistSemiBold14Orange400
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))),
                            ),
                          ),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(top: 25),
                                child: Text(
                                    "Total Offer Amount: ${amount.text} ETH (${(amount.text)} USD)",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold14
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2))))),
                        Padding(
                            padding: getPadding(top: 25),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: isDark
                                    ? ColorConstant.gray800
                                    : ColorConstant.gray300)),
                        Padding(
                            padding: getPadding(top: 23),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Recents",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold20),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        allrecents.clear();
                                      });
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 3, bottom: 3),
                                        child: Text("Clear",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistSemiBold14Orange400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2)))),
                                  )
                                ])),
                        ...allrecents.map((e) => e)
                      ])),
            ),
            floatingActionButton: Container(
              width: MediaQuery.of(context).size.width,
                margin: getMargin(left: 40, right: 10, bottom: 5),
                child: CustomButton(
                    height: 50,
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return DarkSendEthereumConfirmScreen();
                      }));
                    },
                    text: "Continue",
                    variant: ButtonVariant.OutlineOrangeA2003f)));
      },
    ));
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}

List<Widget> allrecents = [
  Padding(
      padding: getPadding(top: 23, right: 34),
      child: Row(children: [
        CustomImageView(
            imagePath: ImageConstant.imgEllipse,
            height: getSize(40),
            width: getSize(40),
            radius: BorderRadius.circular(getHorizontalSize(20))),
        Padding(
            padding: getPadding(left: 16, top: 8, bottom: 9),
            child: Text("0x7131CA84856...68de58848f8Ed83",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistSemiBold18Gray400
                    .copyWith(letterSpacing: getHorizontalSize(0.2))))
      ])),
  Padding(
      padding: getPadding(top: 24, right: 39),
      child: Row(children: [
        CustomImageView(
            imagePath: ImageConstant.imgEllipse40x40,
            height: getSize(40),
            width: getSize(40),
            radius: BorderRadius.circular(getHorizontalSize(20))),
        Padding(
            padding: getPadding(left: 16, top: 8, bottom: 9),
            child: Text("0xd1b18942201...eaa1270af78b0a4",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistSemiBold18Gray400
                    .copyWith(letterSpacing: getHorizontalSize(0.2))))
      ])),
  Padding(
      padding: getPadding(top: 24, right: 39),
      child: Row(children: [
        CustomImageView(
            imagePath: ImageConstant.imgEllipse1,
            height: getSize(40),
            width: getSize(40),
            radius: BorderRadius.circular(getHorizontalSize(20))),
        Padding(
            padding: getPadding(left: 16, top: 8, bottom: 9),
            child: Text("0xf977814e901...3b6295a0616a897",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistSemiBold18Gray400
                    .copyWith(letterSpacing: getHorizontalSize(0.2))))
      ])),
  Padding(
      padding: getPadding(top: 24, right: 39),
      child: Row(children: [
        CustomImageView(
            imagePath: ImageConstant.imgEllipse2,
            height: getSize(40),
            width: getSize(40),
            radius: BorderRadius.circular(getHorizontalSize(20))),
        Padding(
            padding: getPadding(left: 16, top: 8, bottom: 9),
            child: Text("0x172002456e...4ae800bfad93ca5",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistSemiBold18Gray400
                    .copyWith(letterSpacing: getHorizontalSize(0.2))))
      ])),
  Padding(
      padding: getPadding(top: 24, right: 38),
      child: Row(children: [
        CustomImageView(
            imagePath: ImageConstant.imgEllipse3,
            height: getSize(40),
            width: getSize(40),
            radius: BorderRadius.circular(getHorizontalSize(20))),
        Padding(
            padding: getPadding(left: 16, top: 8, bottom: 9),
            child: Text("0x2853eb9bf0...7bda7b30bff19d61",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistSemiBold18Gray400
                    .copyWith(letterSpacing: getHorizontalSize(0.2))))
      ])),
  Padding(
      padding: getPadding(top: 24, right: 37, bottom: 5),
      child: Row(children: [
        CustomImageView(
            imagePath: ImageConstant.imgEllipse4,
            height: getSize(40),
            width: getSize(40),
            radius: BorderRadius.circular(getHorizontalSize(20))),
        Padding(
            padding: getPadding(left: 16, top: 8, bottom: 9),
            child: Text("0xeaf5b1703a...5ce5599fdd7af38e",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistSemiBold18Gray400
                    .copyWith(letterSpacing: getHorizontalSize(0.2))))
      ]))
];
