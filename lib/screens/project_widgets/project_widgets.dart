import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../res/assets.dart';
import '../../res/colors.dart';
import '../../res/res.dart';
import '../../widgets/text_views.dart';

class ProjectWidget {
  static Widget startedButton({required Function? onPress}) {
    return Container(
      height: sizes!.heightRatio * 48,
      width: sizes!.widthRatio * 325,
      decoration: BoxDecoration(
        color: AppColors.xFont2Text,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: TextButton(
          onPressed: () {
            if (onPress != null) {
              onPress.call();
            }
          },
          child: TextView.getTextWith20("Iniciar", Assets.poppinsMedium,
              color: AppColors.whiteTextColor, lines: 1),
        ),
      ),
    );
  }

  static AppBar getAppBar({required String title, @required String? icon}) =>
      AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(left: sizes!.widthRatio * 25.44),
            child: TextView.getMediumText18(title, Assets.poppinsMedium,
                color: AppColors.whiteTextColor,
                lines: 1,
                textAlign: TextAlign.center),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: sizes!.widthRatio * 25.44),
            child: SvgPicture.asset(icon ?? ''),
          )
        ],
        backgroundColor: AppColors.xFont2Text,
        elevation: 0.5,
      );

  static AppBar getAppBarWithBackButton(
          {required String title,
          @required String? icon,
          required BuildContext context}) =>
      AppBar(
        // automaticallyImplyLeading: true,
        leading: Padding(
          padding: EdgeInsets.only(left: sizes!.widthRatio * 10),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Center(
          child: TextView.getMediumText18(title, Assets.poppinsMedium,
              color: AppColors.whiteTextColor,
              lines: 1,
              textAlign: TextAlign.center),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: sizes!.widthRatio * 25.44),
            child: SvgPicture.asset(icon ?? ''),
          )
        ],
        backgroundColor: AppColors.xFont2Text,
        elevation: 0.5,
      );
}
