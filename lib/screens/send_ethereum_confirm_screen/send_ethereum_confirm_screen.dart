import 'dart:developer';

import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
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
import '../ethereum_edit_network_fee_screen/dark_send_ethereum_edit_network_fee_screen.dart';

class DarkSendEthereumConfirmScreen extends StatefulWidget {
  @override
  State<DarkSendEthereumConfirmScreen> createState() =>
      _DarkSendEthereumConfirmScreenState();
}

class _DarkSendEthereumConfirmScreenState
    extends State<DarkSendEthereumConfirmScreen> {
  bool enable1 = true;
  bool enable2 = true;
  bool enable3 = false;
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
                title:
                    AppbarTitle(text: "Confirm", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Text("1.597 ETH",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold48Orange400)),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(top: 9),
                                child: Text("2,107.11 USD",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUrbanistRomanMedium18Gray300
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
                            child: Text("From",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20)),
                        Padding(
                            padding: getPadding(top: 14, right: 35),
                            child: Row(children: [
                              Text("AndrewAinsley",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistSemiBold16.copyWith(
                                      letterSpacing: getHorizontalSize(0.2))),
                              Padding(
                                  padding: getPadding(left: 6),
                                  child: Text("(0x7131CA84df...gt8848f8E696)",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistSemiBold16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2))))
                            ])),
                        Padding(
                            padding: getPadding(top: 23),
                            child: Text("To",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20)),
                        Padding(
                            padding: getPadding(top: 12),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: 
                                      Row(
                                    children: [
                                      Container(
                                        width: 250,
                                        child: TextField(
                                          
                                          
                                          autofocus: enable3,
                                          style: AppStyle.txtUrbanistSemiBold16
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.1)),
                                          decoration: InputDecoration(
                                            
                                              enabled: enable3,
                                              contentPadding: EdgeInsets.all(0),
                                              border: InputBorder.none,
                                              hintText: "(0x16dcc0ecdjfyh7sjjf8dkahd8gfae2bf7c61037)",),
                                        ),
                                      ),
                                    
                                    
                                    ],
                                 
                                 
                                  )
                                
                                      // Text(
                                      //     "(0x16dcc0ecdjfyh7sjjf8dkahd8gfae2bf7c61037)",
                                      //     overflow: TextOverflow.ellipsis,
                                      //     textAlign: TextAlign.left,
                                      //     style: AppStyle.txtUrbanistSemiBold16
                                      //         .copyWith(
                                      //             letterSpacing:
                                      //                 getHorizontalSize(0.2)))
                                                      
                                                      
                                                      
                                                      ),
                           CustomImageView(
                                          onTap: () {
                                            log("i am enabled $enable3");
                                            setState(() {
                                              enable3 = !enable3;
                                            });
                                          },
                                          svgPath: ImageConstant.imgComputer,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(
                                              left: 12, top: 2, bottom: 1)),
                                ])),
                        Padding(
                            padding: getPadding(top: 23),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: isDark
                                    ? ColorConstant.gray800
                                    : ColorConstant.gray300)),
                        Container(
                            padding: getPadding(top: 22),
                            child: Row(children: [
                              Text("Network Fee",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20),
                                  Spacer(),
                                Row(
                                    children: [
                                      Container(
                                        width: 140,
                                        child: TextFormField(
                                          autofocus: enable2,
                                          style: AppStyle.txtUrbanistSemiBold16
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.2)),
                                          decoration: InputDecoration(
                                              enabled: enable2,
                                              contentPadding: EdgeInsets.all(0),
                                              border: InputBorder.none,
                                              hintText: "0.02 ETH (\$26.35 USD)"),
                                        ),
                                      ),
                                      CustomImageView(
                                          onTap: () {
                                            log("i am enabled $enable2");
                                            setState(() {
                                              enable2 = !enable2;
                                            });
                                          },
                                          svgPath: ImageConstant.imgComputer,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(
                                              left: 12, top: 2, bottom: 1)),
                                    
                                    ],
                                  )
                                ,
                              
                            ])),
                        Padding(
                            padding: getPadding(top: 24),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: isDark
                                    ? ColorConstant.gray800
                                    : ColorConstant.gray300)),
                        Padding(
                            padding: getPadding(top: 22, bottom: 5),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Max Total",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold20),
                                  Row(
                                    children: [
                                      Container(
                                        width: 140,
                                        child: TextFormField(
                                          autofocus: enable1,
                                          style: AppStyle.txtUrbanistSemiBold16
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.2)),
                                          decoration: InputDecoration(
                                              enabled: enable1,
                                              contentPadding: EdgeInsets.all(0),
                                              border: InputBorder.none,
                                              hintText: "0.02 ETH (\$26.35 USD)"),
                                        ),
                                      ),
                                      CustomImageView(
                                          onTap: () {
                                            log("i am enabled $enable1");
                                            setState(() {
                                              enable1 = !enable1;
                                            });
                                          },
                                          svgPath: ImageConstant.imgComputer,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(
                                              left: 12, top: 2, bottom: 1)),
                                    ],
                                  )
                                ]))
                      ]),
                )),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                // decoration: AppDecoration.outlineGray800,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return DarkSendEthereumEditNetworkFeeScreen();
                            }));
                          },
                          text: "Send",
                          variant: ButtonVariant.OutlineOrangeA2003f)
                    ])));
      },
    ));
  }

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}
