import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';

import '../../buy_ethereum_select_provider_screen/buy_ethereum_select_provider_screen.dart';

// ignore: must_be_immutable
class ListpriceItemWidget extends StatefulWidget {
  final String name;
  final String fullform;
  final bool select;

  ListpriceItemWidget(
      {required this.name, required this.fullform, required this.select});

  @override
  State<ListpriceItemWidget> createState() => _ListpriceItemWidgetState();
}

class _ListpriceItemWidgetState extends State<ListpriceItemWidget> {
  bool selected = false;
  @override
  void initState() {
    selected = widget.select;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = !selected;
        });
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DarkBuyEthereumSelectProviderScreen();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold20,
            ),
            Padding(
              padding: getPadding(
                left: 12,
                top: 1,
              ),
              child: Text(
                "-",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanBold20,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 12,
                bottom: 1,
              ),
              child: Text(
                widget.fullform,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanBold20,
              ),
            ),
            Spacer(),
            selected
                ? Icon(
                    Icons.check,
                    color: ColorConstant.orangeA200,
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
