import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/custom_button.dart';

import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../ethereum_token_details_screen/ethereum_token_details_screen.dart';

// ignore_for_file: must_be_immutable
class DarkBuyEthereumSuccessfulDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: getHorizontalSize(
          340,
        ),
        padding: getPadding(
          all: 32,
        ),
        decoration: AppDecoration.fillGray90001.copyWith(
          color: isDark ? ColorConstant.gray800 : ColorConstant.white,
          borderRadius: BorderRadiusStyle.roundedBorder48,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: getPadding(
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 10,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: getSize(
                                20,
                              ),
                              width: getSize(
                                20,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.yellow400,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    10,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: getSize(
                                5,
                              ),
                              width: getSize(
                                5,
                              ),
                              margin: getMargin(
                                left: 74,
                                top: 2,
                                bottom: 13,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.yellow400,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    2,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: getSize(
                              2,
                            ),
                            width: getSize(
                              2,
                            ),
                            margin: getMargin(
                              top: 54,
                              bottom: 87,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.yellow400,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  1,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: getSize(
                              10,
                            ),
                            width: getSize(
                              10,
                            ),
                            margin: getMargin(
                              left: 3,
                              top: 108,
                              bottom: 25,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.yellow400,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  5,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: getSize(
                              143,
                            ),
                            width: getSize(
                              143,
                            ),
                            margin: getMargin(
                              left: 9,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder70,
                                    ),
                                    child: Container(
                                      height: getSize(
                                        141,
                                      ),
                                      width: getSize(
                                        141,
                                      ),
                                      padding: getPadding(
                                        all: 45,
                                      ),
                                      decoration: AppDecoration
                                          .gradientOrangeA200Orange40001
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder70,
                                      ),
                                      child: Stack(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgCart,
                                            height: getSize(
                                              49,
                                            ),
                                            width: getSize(
                                              49,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: getSize(
                                      5,
                                    ),
                                    width: getSize(
                                      5,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.yellow400,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: getSize(
                            2,
                          ),
                          width: getSize(
                            2,
                          ),
                          margin: getMargin(
                            top: 7,
                            right: 45,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.yellow400,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: getSize(
                          7,
                        ),
                        width: getSize(
                          7,
                        ),
                        margin: getMargin(
                          left: 59,
                          top: 1,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.yellow400,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: getPadding(
                      top: 20,
                      bottom: 67,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: getSize(
                              15,
                            ),
                            width: getSize(
                              15,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.yellow400,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getSize(
                            5,
                          ),
                          width: getSize(
                            5,
                          ),
                          margin: getMargin(
                            top: 73,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.yellow400,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 31,
              ),
              child: Text(
                "Successful Purchase!",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanBold24Orange400,
              ),
            ),
            Container(
              width: getHorizontalSize(
                253,
              ),
              margin: getMargin(
                left: 11,
                top: 17,
                right: 11,
              ),
              child: Text(
                "Purchase Success! Crypto has been added to your wallet.",
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtUrbanistRegular16.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.2,
                  ),
                ),
              ),
            ),
            CustomButton(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DarkEthereumTokenDetailsScreen();
                }));
              },
              text: "View Details",
              margin: getMargin(
                top: 29,
              ),
              variant: ButtonVariant.GradientOrangeA200Orange40001,
              padding: ButtonPadding.PaddingAll19,
            ),
            CustomButton(
              onTap: () => Navigator.of(context).pop(),
              height: getVerticalSize(
                58,
              ),
              text: "Cancel",
              margin: getMargin(
                top: 12,
              ),
              fontStyle: ButtonFontStyle.UrbanistRomanBold18Orange400,
              variant: ButtonVariant.FillAmber50014,
              padding: ButtonPadding.PaddingAll19,
            ),
          ],
        ),
      ),
    );
  }
}
