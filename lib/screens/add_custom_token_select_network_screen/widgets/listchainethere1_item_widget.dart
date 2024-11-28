// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:eternalwallet/core/app_export.dart';

import '../../add_custom_token_blank_form_screen/custom_token_blank_form_screen.dart';

// ignore: must_be_immutable
class Listchainethere1ItemWidgetNetWork extends StatelessWidget {
  final Widget image;
  final String name;
  Listchainethere1ItemWidgetNetWork(
   
    { required this.image,
   required this.name,}
  ) : super();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DarkAddCustomTokenBlankFormScreen();
        }));
      },
      child: Row(
        children: [
          image,
          Padding(
            padding: getPadding(
              left: 20,
              top: 11,
              bottom: 12,
            ),
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold20,
            ),
          ),
          // Padding(
          //   padding: getPadding(
          //     left: 8,
          //     top: 12,
          //     bottom: 12,
          //   ),
          //   child: Text(
          //     name,
          //     overflow: TextOverflow.ellipsis,
          //     textAlign: TextAlign.left,
          //     style: AppStyle.txtUrbanistRomanBold20Gray300,
          //   ),
          // ),
        ],
      ),
    );
  }
}
