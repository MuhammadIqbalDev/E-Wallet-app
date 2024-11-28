import 'package:eternalwallet/screens/receive_crypto_options_screen/widgets/listchainethere2_item_widget.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../receive_ethereum_qr_code_screen/receive_ethereum_qr_code_screen.dart';
import '../wallet_tokens_full_page/wallet_tokens_full_page.dart';

class DarkReceiveCryptoOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        bool isDark = state.isDarkTheme;
        return Scaffold(
          appBar: CustomAppBar(
              height: getVerticalSize(68),
              leadingWidth: 52,
              leading: GotoBack(context),
              title: AppbarTitle(text: "Receive", margin: getMargin(left: 16)),
              actions: [
                Padding(
                    padding: EdgeInsets.all(8),
                    child: CustomIcon(
                      icon: Icons.search,
                      size: 25,
                    ))
              ]),
          body: SingleChildScrollView(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 9, right: 24, bottom: 9),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 10),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding:
                                        getPadding(top: 16.0, bottom: 16.0),
                                    child: SizedBox(
                                        width: getHorizontalSize(380),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: isDark
                                                ? ColorConstant.gray800
                                                : ColorConstant.gray300)));
                              },
                              itemCount: allcoins.length,
                                        itemBuilder: (context, index) {
                                         
                                          return InkWell(
                                            onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return DarkReceiveEthereumQrCodeScreen();
                                    }));
                                  },
                                            child: Listchainethere2ItemWidget(
                                                allcoins[index]['name'],
                                                allcoins[index]['amount'] as double,
                                                allcoins[index]['dollar'] as double,
                                                allcoins[index]['coin'] as double,
                                                allcoins[index]['cper'] as double,
                                                allcoins[index]['image'],
                                                "Receive"),
                                          );}
                              // itemCount: 10,
                              // itemBuilder: (context, index) {
                              //   return InkWell(
                              //     onTap: () {
                              //       Navigator.of(context).push(
                              //           MaterialPageRoute(builder: (context) {
                              //         return DarkReceiveEthereumQrCodeScreen();
                              //       }));
                              //     },
                              //     child: Listchainethere2ItemWidget(
                              //         "Etheurem",
                              //         2000,
                              //         200,
                              //         123.7,
                              //         1.75,
                              //         CustomImageView(
                              //            svgPath:
                              //              isDark ? ImageConstant.imgChainethereumeth : null,
                              //              imagePath: !isDark ? ImageConstant.darkEth : null,
                              //           height: getSize(
                              //             48,
                              //           ),
                              //           width: getSize(
                              //             48,
                              //           ),
                              //         ),
                              //         "Receive"),
                              
                              )),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray800))
                    ])),
          ),
        );
      },
    ));
  }

  onTapArrowleft8(BuildContext context) {
    Navigator.pop(context);
  }
}
