
import 'package:flutter/material.dart';

import 'package:eternalwallet/core/app_export.dart';

import '../../ethereum_token_details_screen/ethereum_token_details_screen.dart';

// ignore: must_be_immutable
class Listchainsolana1ItemWidget extends StatelessWidget {
  final Widget imagePath;
  final String title;
  Listchainsolana1ItemWidget(
    this.imagePath,
    this.title
  ) : super();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DarkEthereumTokenDetailsScreen(title: title,image:  imagePath,);
        }));
      },
      child: Row(
        children: [
         imagePath,
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
                        "APR:",
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
                          bottom: 1,
                        ),
                        child: Text(
                          "+7.12%",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanMedium12.copyWith(
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
    );
  }
}
