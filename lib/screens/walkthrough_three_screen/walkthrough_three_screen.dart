import 'package:carousel_slider/carousel_slider.dart';
import 'package:eternalwallet/screens/walkthrough_three_screen/widgets/slideryoursecur_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../walkthrough_four_screen/walkthrough_four_screen.dart';

class DarkWalkthroughThreeScreen extends StatelessWidget {
  int silderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage350x350,
                height: getSize(
                  350,
                ),
                width: getSize(
                  350,
                ),
                margin: getMargin(
                  top: 71,
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    top: 61,
                  ),
                  padding: getPadding(
                    left: 24,
                    top: 36,
                    right: 24,
                    bottom: 36,
                  ),
                  decoration: AppDecoration.fillGray900.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL60,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 12,
                          top: 7,
                          right: 11,
                        ),
                        child: CarouselSlider.builder(
                          options: CarouselOptions(
                            height: getVerticalSize(
                              169,
                            ),
                            initialPage: 0,
                            autoPlay: true,
                            viewportFraction: 1.0,
                            enableInfiniteScroll: false,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (
                              index,
                              reason,
                            ) {
                              silderIndex = index;
                            },
                          ),
                          itemCount: 1,
                          itemBuilder: (context, index, realIndex) {
                            return SlideryoursecurItemWidget();
                          },
                        ),
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                     
                     
                        
                       
                          Container(
                            height: getVerticalSize(
                              8,
                            ),
                            margin: getMargin(
                              top: 41,
                            ),
                            child: AnimatedSmoothIndicator(
                              activeIndex: silderIndex,
                              count: 1,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: ColorConstant.orangeA200,
                                dotColor: ColorConstant.gray500,
                                dotHeight: getVerticalSize(
                                  8,
                                ),
                                dotWidth: getHorizontalSize(
                                  8,
                                ),
                              ),
                            ),
                          ),
                            Container(
                            height: getVerticalSize(
                              8,
                            ),
                            margin: getMargin(
                              top: 41,
                            ),
                            child: AnimatedSmoothIndicator(
                              activeIndex: silderIndex,
                              count: 1,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: ColorConstant.orangeA200,
                                dotColor: ColorConstant.orange400,
                                dotHeight: getVerticalSize(
                                  8,
                                ),
                                dotWidth: getHorizontalSize(
                                  15,
                                ),
                              ),
                            ),
                          ),
                       
                          Container(
                            height: getVerticalSize(
                              8,
                            ),
                            margin: getMargin(
                              top: 41,
                            ),
                            child: AnimatedSmoothIndicator(
                              activeIndex: silderIndex,
                              count: 1,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: ColorConstant.orangeA200,
                                dotColor: ColorConstant.gray500,
                                dotHeight: getVerticalSize(
                                  8,
                                ),
                                dotWidth: getHorizontalSize(
                                  8,
                                ),
                              ),
                            ),
                          ),
                       
                       
                        ],
                      ),
                     
                      InkWell(
                                                     splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
                        onTap: (){
                           Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DarkWalkthroughFourScreen()),
      );
                        },
                        child: CustomButton(
                          text: "Next",
                          margin: getMargin(
                            top: 20,
                          ),
                          variant: ButtonVariant.OutlineOrangeA2003f,
                          shape: ButtonShape.CircleBorder29,
                          padding: ButtonPadding.PaddingT18,
                          fontStyle: ButtonFontStyle.UrbanistRomanBold18b,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
