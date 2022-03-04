import 'package:flutter/material.dart';

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

  static AppBar getAppBar({required String title}) => AppBar(
        title: Center(
          child: TextView.getMediumText18(title, Assets.poppinsMedium,
              color: AppColors.whiteTextColor, lines: 1),
        ),
        backgroundColor: AppColors.xFont2Text,
        elevation: 0.5,
      );
}
