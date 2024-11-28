

// ignore: must_be_immutable
import 'package:flutter/cupertino.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';

class Slidername1ItemWidget extends StatelessWidget {
  Slidername1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            400,
          ),
          child: Text(
            "Crypto Transactions Now is Easier",
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtUrbanistRomanBold48,
          ),
        ),
        Container(
          width: getHorizontalSize(
            329,
          ),
          // margin: getMargin(
          //   left: 17,
          //   top: 20,
          //   right: 17,
          // ),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtUrbanistRomanMedium18.copyWith(
              letterSpacing: getHorizontalSize(
                0.2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
