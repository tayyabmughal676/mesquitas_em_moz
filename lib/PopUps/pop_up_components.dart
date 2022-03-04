import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../res/assets.dart';
import '../res/colors.dart';
import '../res/common_padding.dart';
import '../res/res.dart';
import '../widgets/text_views.dart';

class PopUpComponents {
  static Widget deleteDailyIntegration(
    BuildContext context, {
    @required Function? onPress,
  }) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: GestureDetector(
        onTap: () {
          if (onPress != null) {
            onPress.call();
          }
        },
        child: Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                  color: AppColors.psHomeScreenContainerBorderColor,
                  width: 0.5)),
          backgroundColor: AppColors.psHomeScreenContainerColor,
          child: Stack(
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              SizedBox(
                height: sizes!.heightRatio * 250.0,
                width: sizes!.widthRatio * 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/pop_up_delete_icon.svg",
                      height: sizes!.heightRatio * 62.0,
                      width: sizes!.widthRatio * 62.0,
                    ),
                    CommonPadding.sizeBoxWithHeight(height: 30.0),
                    Center(
                      child: TextView.getTextWith20(
                          "Note Successfully\n delete", Assets.poppinsSemiBold,
                          color: AppColors.whiteTextColor,
                          lines: 3,
                          textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
