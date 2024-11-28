import 'package:eternalwallet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListchainsolanaItemWidget extends StatelessWidget {
  final Widget image;
  final String name;
  ListchainsolanaItemWidget({required this.image,required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        image,
        Padding(
          padding: getPadding(
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name,
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
                        "+1.7%",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtUrbanistRomanMedium12Orange400.copyWith(
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
    );
  }
}
