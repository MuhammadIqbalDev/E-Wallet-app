// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';

import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../buy_ethereum_select_currency_screen/buy_ethereum_select_currency_screen.dart';
import '../buy_ethereum_successful_dialog/buy_ethereum_successful_dialog.dart';

class DarkBuyEthereumSetAmountScreen extends StatefulWidget {
  final bool isCompeleted;
  const DarkBuyEthereumSetAmountScreen({
    Key? key,
    required this.isCompeleted,
  }) : super(key: key);
  @override
  State<DarkBuyEthereumSetAmountScreen> createState() =>
      _DarkBuyEthereumSetAmountScreenState();
}

class _DarkBuyEthereumSetAmountScreenState
    extends State<DarkBuyEthereumSetAmountScreen> {
  TextEditingController _amountController = TextEditingController();
 

  List<Map<String, dynamic>> currency = [
    {'id': 1, 'cur': "USD"},
    {'id': 2, 'cur': "EUR"},
    {'id': 3, 'cur': "GBP"},
  ];
  List<DropdownMenuItem> _addDividersAfterItems(List items) {
  List<DropdownMenuItem> _menuItems = [];
  for (var item in items) {

    _menuItems.addAll(
      [
        DropdownMenuItem(
          value: item['id'],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              item['cur'],
              style:  TextStyle(
                 color: isDark ? ColorConstant.white : ColorConstant.gray800,
                fontSize: 14,
              ),
            ),
          ),
        ),
        //If it's last item, we will not add Divider after it.
        if (item != items.last)
          const DropdownMenuItem(
            enabled: false,
            child: Divider(),
          ),
      ],
    );
  }
  return _menuItems;
}
List<double> _getCustomItemsHeights() {
  List<double> _itemsHeights = [];
  for (var i = 0; i < (currency.length * 2) - 1; i++) {
    if (i.isEven) {
      _itemsHeights.add(40);
    }
    //Dividers indexes will be the odd indexes
    if (i.isOdd) {
      _itemsHeights.add(4);
    }
  }
  return _itemsHeights;
}

  int incur = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
          height: getVerticalSize(69),
          leadingWidth: 52,
          leading: GotoBack(context),
          title: AppbarTitle(text: "Buy ETH", margin: getMargin(left: 16))),
      body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 24, top: 18, right: 24, bottom: 18),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: ColorConstant.orange400, width: 2)),
              child: Center(
                child: DropdownButtonHideUnderline(
        child: DropdownButton2<dynamic>(
          isExpanded: true,
          hint: Text(
            'USD',
            style: TextStyle(
              fontSize: 14,
              color: isDark ? ColorConstant.white : ColorConstant.gray800,
            ),
          ),
          items: _addDividersAfterItems(currency),
          value:incur,
          onChanged: (value) {
            setState(() {
              incur = value as int;
            });
          },
          buttonStyleData: const ButtonStyleData(height: 40, width: 140),
          dropdownStyleData:  DropdownStyleData(
             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
            maxHeight: 200,
          ),
          menuItemStyleData: MenuItemStyleData(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            customHeights: _getCustomItemsHeights(),
          ),
        ),
      ),
//               DropdownButton(
//   value: incur,
//   items: currency.map((Map<String, dynamic> item) {
//     return DropdownMenuItem(
//       value: item['id'] as int,
//       child: Text(
//         item['cur'],
//         style: AppStyle.txtUrbanistRomanBold16Orange400.copyWith(fontSize: 15),
//       ),
//     );
//   }).toList(),
//   onChanged: (newValue) {
//     if (newValue != null) {
//       setState(() {
//         incur = newValue as int;
//       });
//     }
//   },
//   dropdownColor: isDark ? ColorConstant.gray800 : ColorConstant.white,
//   icon: Padding(
//     padding: const EdgeInsets.only(left: 10),
//     child: Icon(
//       Icons.arrow_drop_down,
//       color: ColorConstant.orange400,
//     ),
//   ),
//   underline: Container(
//     height: 0,
//     color: Colors.transparent,
//   ),
//   borderRadius: BorderRadius.circular(10),
//   style: TextStyle(
//     // Add any additional styles if needed
//   ),
// ),


),
            ),
            // CustomButton(
            //     height: getVerticalSize(45),
            //     width: getHorizontalSize(113),
            //     text: "USD",
            //     variant: ButtonVariant.OutlineOrangeA2003f,
            //     // variant: ButtonVariant.OutlineOrange400,
            //     shape: ButtonShape.RoundedBorder22,
            //     padding: ButtonPadding.PaddingT11,
            //     fontStyle: ButtonFontStyle.UrbanistRomanBold18,
            //     suffixWidget: Container(
            //         margin: getMargin(left: 8),
            //         child: Icon(
            //           Icons.arrow_drop_down,
            //           color: ColorConstant.whiteA700,
            //         ))),
            Padding(
              padding: getPadding(top: 52),
              child: TextField(
                controller: _amountController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                showCursor: false,
                onChanged: (value) {
                  setState(() {
                    // _amountController.text = '$value';
                  });
                },
                style: AppStyle.txtUrbanistRomanBold56,
                decoration: InputDecoration(
                    // prefix: Text('\$'),
                    border: InputBorder.none,
                    alignLabelWithHint: true,
                    fillColor: Colors.transparent,
                    hintText: '\$0',
                    hintStyle: AppStyle.txtUrbanistRomanBold56),
              ),
            ),
            Padding(
                padding: getPadding(top: 17),
                child: Text("~ ${_amountController.text} ETH",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanMedium18
                        .copyWith(letterSpacing: getHorizontalSize(0.2)))),
            Padding(
                padding: getPadding(top: 57),
                child: Divider(
                    height: getVerticalSize(1),
                    thickness: getVerticalSize(1),
                    color: isDark
                        ? ColorConstant.gray800
                        : ColorConstant.gray300)),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DarkBuyEthereumSelectCurrencyScreen();
                }));
              },
              child: Container(
                  margin: getMargin(top: 23),
                  padding: getPadding(all: 16),
                  decoration: AppDecoration.outlineGray8001
                      .copyWith(borderRadius: BorderRadius.circular(10)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgClose,
                            height: getSize(48),
                            width: getSize(48)),
                        Padding(
                            padding: getPadding(left: 16, top: 13, bottom: 12),
                            child: Text("Binance Connect",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistSemiBold18.copyWith(
                                    letterSpacing: getHorizontalSize(0.2)))),
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(24),
                            width: getSize(24),
                            margin: getMargin(top: 12, bottom: 12))
                      ])),
            ),
          ])),
      floatingActionButton: Container(
        margin: EdgeInsets.only(left: 25,right: 0),
        padding: EdgeInsets.all(10),
        child: CustomButton(
            onTap: () async {
              !widget.isCompeleted
                  ? (Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                      return DarkBuyEthereumSelectCurrencyScreen();
                    })))
                  : (await showDialog(
                      context: context,
                      builder: (context) {
                        return DarkBuyEthereumSuccessfulDialog();
                      }));
            },
            height: getVerticalSize(58),
            text: "Continue",
            margin: getMargin(top: 40, bottom: 5),
            variant: ButtonVariant.FillOrange400),
      ),
    ));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
