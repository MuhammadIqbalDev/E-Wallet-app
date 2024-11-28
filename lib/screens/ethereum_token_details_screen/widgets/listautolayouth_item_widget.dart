

import 'package:flutter/material.dart';

import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';

import '../../ethereum_transfer_history_screen/ethereum_transfer_history_screen.dart';

// ignore: must_be_immutable
class ListautolayouthItemWidget extends StatelessWidget {
  final String title;
  final String to;
  final String itemno;
  final String amount;
  final String image;
  ListautolayouthItemWidget({
    required this.image,
    required this.title,
    required this.to,
    required this.itemno,
    required this.amount,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DarkEthereumTransferHistoryScreen(title: title,image: image,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 48,
                  width: 48,
                  margin: getMargin(
                    top: 1,
                  ),
                  variant: IconButtonVariant.FillOrange50014,
                  shape: IconButtonShape.CircleBorder24,
                  padding: IconButtonPadding.PaddingAll12,
                  child: CustomImageView(
                    imagePath: image,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold20,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 7,
                        ),
                        child: Row(
                          children: [
                            Text(
                              to,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistSemiBold14.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                              ),
                              child: Text(
                                itemno,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistSemiBold14.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.2,
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
              ],
            ),
            Padding(
              padding: getPadding(
                left: 47,
                top: 14,
                bottom: 13,
              ),
              child: Text(
                amount,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanBold18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
