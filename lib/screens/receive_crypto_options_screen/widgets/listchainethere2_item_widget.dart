// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';
import 'package:flutter/material.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';
import '../../buy_ethereum_set_amount_screen/buy_ethereum_set_amount_screen.dart';
import '../../ethereum_token_details_screen/ethereum_token_details_screen.dart';
import '../../receive_ethereum_qr_code_screen/receive_ethereum_qr_code_screen.dart';
import '../../send_ethereum_filled_form_screen/send_ethereum_filled_form_screen.dart';

// ignore: must_be_immutable
class Listchainethere2ItemWidget extends StatelessWidget {
  final String title;
  final double amount;
  final double desc;
  final double title_desc;
  final double desc_per;
  final Widget image;
  final String purpose;
  Listchainethere2ItemWidget(
    this.title,
    this.amount,
    this.desc,
    this.title_desc,
    this.desc_per,
    this.image, this.purpose,
  ) : super();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('$title');
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return purpose== "Send"
              ? DarkSendEthereumFilledFormScreen()
              : purpose == "Receive"
                  ? DarkReceiveEthereumQrCodeScreen()
                  : purpose == "Buy" ? DarkBuyEthereumSetAmountScreen(isCompeleted: false,) : DarkEthereumTokenDetailsScreen(
                    title: title,
                    image: image,
                  );
        }));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          Padding(
            padding: getPadding(
              left: 20,
              top: 11,
              bottom: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: AppStyle.txtUrbanistRomanBold20,
                ),
                Row(
                  children: [
                    Text(
                      '\$${title_desc}',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRegular16,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${desc_per}%',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRegular16,
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              bottom: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  amount.toString(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold18,
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Text(
                    "\$ ${desc}",
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
    );
  }
}
