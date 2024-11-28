// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:eternalwallet/core/app_export.dart';

// ignore: must_be_immutable
class ListnameItemWidget extends StatefulWidget {
  final String name;
  final String networkfee;
  ListnameItemWidget(
    this.name,
    this.networkfee,
  ) : super();

  @override
  State<ListnameItemWidget> createState() => _ListnameItemWidgetState();
}

class _ListnameItemWidgetState extends State<ListnameItemWidget> {
  bool enable=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Padding(
        padding: getPadding(
          bottom: 1,
        ),
        child: 
        Row(children: [Padding(
        padding: getPadding(
          top: 2,
        ),
        child: Text(
          widget.name,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtUrbanistSemiBold16.copyWith(
            letterSpacing: getHorizontalSize(
              0.2,
            ),
          ),
        ),
      ),
      CustomImageView(
        svgPath: ImageConstant.imgIconlycurvedinfo,
        height: getSize(
          16,
        ),
        width: getSize(
          16,
        ),
        margin: getMargin(
          left: 6,
          top: 2,
          bottom: 4,
        ),
      ),
          Spacer(),
                                  Container(
                                    width: 140,
                                    padding: EdgeInsets.zero,
                                    child: TextFormField(
                                      autofocus: enable,
                                      style: AppStyle.txtUrbanistSemiBold16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2)),
                                      decoration: InputDecoration(
                                          enabled: enable,
                                          contentPadding: EdgeInsets.all(0),
                                          border: InputBorder.none,
                                          hintText: "0.02 ETH (\$26.35 USD)"),
                                    ),
                                  ),
                                  CustomImageView(
                                          onTap: () {
                                            
                                            setState(() {
                                              enable = !enable;
                                            });
                                          },
                                          svgPath: ImageConstant.imgComputer,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(
                                              left: 12, top: 2, bottom: 1)),
        
                                
                                ],
                              )
                            ,
      ),
    );
  }
}
