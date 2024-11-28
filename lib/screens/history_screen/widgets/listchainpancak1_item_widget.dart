// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:eternalwallet/core/app_export.dart';

// ignore: must_be_immutable
class Listchainpancak1ItemWidget extends StatefulWidget {
  
  Widget image;
  String name;
  String desc;

  Listchainpancak1ItemWidget(
   {required this.image,
     required this.name,
   required this.desc,}
  ) : super();

  @override
  State<Listchainpancak1ItemWidget> createState() => _Listchainpancak1ItemWidgetState();
}

class _Listchainpancak1ItemWidgetState extends State<Listchainpancak1ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        widget.image,
        Expanded(
          child: Padding(
            padding: getPadding(
              left: 16,
              top: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20,
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Text(
                    widget.desc,
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
        ),
      ],
    );
  }
}
