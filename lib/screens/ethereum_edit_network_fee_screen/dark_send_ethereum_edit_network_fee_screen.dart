import 'dart:developer';

import 'package:eternalwallet/screens/ethereum_edit_network_fee_screen/widgets/listspeed_item_widget.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../send_ethereum_failed_dialog/send_ethereum_failed_dialog.dart';

class DarkSendEthereumEditNetworkFeeScreen extends StatefulWidget {
  @override
  State<DarkSendEthereumEditNetworkFeeScreen> createState() =>
      _DarkSendEthereumEditNetworkFeeScreenState();
}

class _DarkSendEthereumEditNetworkFeeScreenState
    extends State<DarkSendEthereumEditNetworkFeeScreen> {
  bool select1 = true;
  bool select2 = false;
  bool select3 = false;
  TextEditingController statusdefaultController = TextEditingController();

  TextEditingController statusdefaultController1 = TextEditingController();

  TextEditingController statusdefaultController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Edit Network Fee", margin: getMargin(left: 16))),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Basic",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20),
                        Container(
                            width: getHorizontalSize(372),
                            margin: getMargin(top: 16, right: 7),
                            child: Text(
                                "The network fee covers the cost of processing your transaction on the Ethereum network.",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanMedium16
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.2)))),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      select1 = !select1;
                                      if (select1) {
                                        select2 = false;
                                        select3 = false;
                                      }
                                    });
                                    log("$select1 $select2 $select3");
                                  },
                                  child: ListspeedItemWidget(
                                      "Slow", 0.02, 26.35, select1),
                                ),
                                SizedBox(
                                  height: getVerticalSize(16),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      select2 = !select2;
                                      if (select2) {
                                        select1 = false;
                                        select3 = false;
                                      }
                                    });
                                  },
                                  child: ListspeedItemWidget(
                                      "Moderate", 0.04, 53.03, select2),
                                ),
                                SizedBox(
                                  height: getVerticalSize(16),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      select3 = !select3;
                                      if (select3) {
                                        select2 = false;
                                        select1 = false;
                                      }
                                    });
                                  },
                                  child: ListspeedItemWidget(
                                      "Fast", 0.08, 106.06, select3),
                                ),
                              ],
                            )),
                        Padding(
                            padding: getPadding(top: 24),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: isDark
                                    ? ColorConstant.gray800
                                    : ColorConstant.gray300)),
                        Padding(
                            padding: getPadding(top: 22),
                            child: Text("Advanced",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20)),
                        CustomTextFormField(
                            controller: statusdefaultController,
                            hintText: "Max Fee (Gwei)",
                            padding: TextFormFieldPadding.PaddingT18_1,
                            margin: getMargin(top: 20)),
                        CustomTextFormField(
                            controller: statusdefaultController1,
                            hintText: "Gas Limit",
                            padding: TextFormFieldPadding.PaddingT18_1,
                            margin: getMargin(top: 20)),
                        CustomTextFormField(
                            controller: statusdefaultController2,
                            hintText: "Nonce",
                            margin: getMargin(top: 20, bottom: 1),
                            padding: TextFormFieldPadding.PaddingT18_1,
                            textInputAction: TextInputAction.done)
                      ])),
            ),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          onTap: () async {
                            await showDialog(
                                context: context,
                                builder: (context) {
                                  return DarkSendEthereumFailedDialog();
                                });
                          },
                          text: "OK",
                          variant: ButtonVariant.OutlineOrangeA2003f)
                    ]))));
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}
