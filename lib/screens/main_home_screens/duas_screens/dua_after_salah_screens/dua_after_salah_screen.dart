import 'package:flutter/material.dart';
import 'package:mesquitas_em_moz/res/extensions.dart';

import '../../../../res/assets.dart';
import '../../../../res/colors.dart';
import '../../../../res/common_padding.dart';
import '../../../../res/res.dart';
import '../../../../widgets/text_views.dart';
import '../../../project_widgets/project_widgets.dart';

class DuaAfterSalahScreen extends StatefulWidget {
  const DuaAfterSalahScreen({Key? key}) : super(key: key);

  @override
  State<DuaAfterSalahScreen> createState() => _DuaAfterSalahScreenState();
}

class _DuaAfterSalahScreenState extends State<DuaAfterSalahScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ProjectWidget.getAppBarWithBackButton(
            title: "Duas Depois Da Oração", context: context),
        body: Container(
          height: sizes!.height,
          width: sizes!.width,
          decoration: const BoxDecoration(
              // color: AppColors.xFont2Text,
              image: DecorationImage(
                  image: AssetImage("assets/png/main_bg_image.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              CommonPadding.sizeBoxWithHeight(height: 60),
              Container(
                height: sizes!.heightRatio * 350,
                width: sizes!.widthRatio * 325,
                decoration: BoxDecoration(
                  color: AppColors.whiteTextColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.xContainerShadow2,
                      blurRadius: 35, //18
                      offset: Offset(0, 15),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: sizes!.widthRatio * 20,
                          right: sizes!.widthRatio * 20,
                          top: sizes!.heightRatio * 38),
                      child: TextView.getMediumText14(
                          "لَا إِلَهَ إِلَّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيءٍ قًدِيرٌ‏.‏ اَللَّهُمَّ لَا مَانِعَ لِمَا أَعْطَيتَ، وَلَا مُعْطِيَ لِمَا مَنَعْتَ، وَلَا يَنْفَعُ ذَا الْجَدِّ مِنْكَ الْجَدُّ",
                          Assets.poppinsRegular,
                          color: AppColors.xFont2Text,
                          fontWeight: FontWeight.normal,
                          lines: 5,
                          textAlign: TextAlign.center),
                    ),
                    CommonPadding.sizeBoxWithHeight(height: 12),
                    Padding(
                      padding: EdgeInsets.only(
                          left: sizes!.widthRatio * 20,
                          right: sizes!.widthRatio * 20),
                      child: const Divider(
                        color: AppColors.xFon3Text,
                        thickness: 0.5,
                      ),
                    ),
                    CommonPadding.sizeBoxWithHeight(height: 12),
                    Padding(
                      padding: EdgeInsets.only(
                          left: sizes!.widthRatio * 20,
                          right: sizes!.widthRatio * 20),
                      child: TextView.getMediumText14(
                          "There is no true god except Allah. He is One and "
                          "He has no partner with Him, His is the sovereignty and "
                          "His is the praise, and He is Omnipotent. O Allah! None can deny "
                          "that which You bestow and none can bestow that which You hold back, "
                          "and the greatness of the great will be of no avail to them against You.\n\n (Sahih Al-Bukhari and Muslim)",
                          Assets.poppinsLight,
                          color: AppColors.xFont2Text,
                          lines: 10,
                          textAlign: TextAlign.center),
                    )
                  ],
                ),
              ).get25HorizontalPadding()
            ],
          ),
        ),
      ),
    );
  }
}
