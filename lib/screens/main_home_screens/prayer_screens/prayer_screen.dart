import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mesquitas_em_moz/res/extensions.dart';

import '../../../res/assets.dart';
import '../../../res/colors.dart';
import '../../../res/common_padding.dart';
import '../../../res/res.dart';
import '../../../widgets/text_views.dart';
import '../../project_widgets/project_widgets.dart';

class PrayerScreen extends StatefulWidget {
  const PrayerScreen({Key? key}) : super(key: key);

  @override
  State<PrayerScreen> createState() => _PrayerScreenState();
}

class _PrayerScreenState extends State<PrayerScreen> {
  var headlineTextList = ["orações", "Masjids", "Quibla", "Duas"];

  var headlineIconList = [
    "assets/svg/orações.svg",
    "assets/svg/masjid_icon_color.svg",
    "assets/svg/quibla_color.svg",
    "assets/svg/prayer_color.svg"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: sizes!.height,
        width: sizes!.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/png/main_bg_image.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: ProjectWidget.getAppBar(
              title: "Início", icon: 'assets/svg/bell_icon.svg'),
          body: SingleChildScrollView(
            child: Column(
              children: [
                getHeaderContainer(),
                CommonPadding.sizeBoxWithHeight(height: 30),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      getHeadlineContainer(
                          text: headlineTextList[0], icon: headlineIconList[0]),
                      getHeadlineContainer(
                          text: headlineTextList[1], icon: headlineIconList[1]),
                      getHeadlineContainer(
                          text: headlineTextList[2], icon: headlineIconList[2]),
                      getHeadlineContainer(
                          text: headlineTextList[3], icon: headlineIconList[3]),
                    ],
                  ),
                ),
                CommonPadding.sizeBoxWithHeight(height: 30),
                Align(
                        alignment: Alignment.centerLeft,
                        child: TextView.getTextWith20(
                            "Próximos Eventos", Assets.poppinsMedium,
                            color: AppColors.xFont2Text, lines: 1))
                    .get25HorizontalPadding(),
                CommonPadding.sizeBoxWithHeight(height: 15),
                Container(
                  height: sizes!.heightRatio * 158,
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
                  child: Image.asset(
                    'assets/png/event_image@2x.png',
                    fit: BoxFit.fill,
                  ),
                ).get25HorizontalPadding(),
                CommonPadding.sizeBoxWithHeight(height: 30),
                Align(
                        alignment: Alignment.centerLeft,
                        child: TextView.getTextWith20(
                            "Horário das orações", Assets.poppinsMedium,
                            color: AppColors.xFont2Text, lines: 1))
                    .get25HorizontalPadding(),
                CommonPadding.sizeBoxWithHeight(height: 15),
                Container(
                  height: sizes!.heightRatio * 349,
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
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: sizes!.heightRatio * 30,
                        bottom: sizes!.heightRatio * 22,
                        left: sizes!.widthRatio * 12.5,
                        right: sizes!.widthRatio * 12.5),
                    child: Column(
                      children: [
                        getNamazRow(text: "Fajr"),
                        CommonPadding.sizeBoxWithHeight(height: 10),
                        const Divider(
                          color: AppColors.xFon3Text,
                          thickness: 0.5,
                        ),
                        CommonPadding.sizeBoxWithHeight(height: 10),
                        getNamazRow(text: "Nascer Do Sol"),
                        CommonPadding.sizeBoxWithHeight(height: 10),
                        const Divider(
                          color: AppColors.xFon3Text,
                          thickness: 0.5,
                        ),
                        CommonPadding.sizeBoxWithHeight(height: 10),
                        getNamazRow(text: "Zuhr"),
                        CommonPadding.sizeBoxWithHeight(height: 10),
                        const Divider(
                          color: AppColors.xFon3Text,
                          thickness: 0.5,
                        ),
                        CommonPadding.sizeBoxWithHeight(height: 10),
                        getNamazRow(text: "Asr"),
                        CommonPadding.sizeBoxWithHeight(height: 10),
                        const Divider(
                          color: AppColors.xFon3Text,
                          thickness: 0.5,
                        ),
                        CommonPadding.sizeBoxWithHeight(height: 10),
                        getNamazRow(text: "Maghrib"),
                        CommonPadding.sizeBoxWithHeight(height: 10),
                        const Divider(
                          color: AppColors.xFon3Text,
                          thickness: 0.5,
                        ),
                        CommonPadding.sizeBoxWithHeight(height: 10),
                        getNamazRow(text: "Isha"),
                      ],
                    ),
                  ),
                ),
                CommonPadding.sizeBoxWithHeight(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getNamazRow({required String text}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 20),
        child: Row(
          children: [
            TextView.getMediumText18(text, Assets.poppinsMedium,
                color: AppColors.xSubheadingTextColor, lines: 1),
            const Spacer(),
            TextView.getMediumText14("13:00", Assets.poppinsLight,
                color: AppColors.xFont2Text, lines: 1),
            CommonPadding.sizeBoxWithWidth(width: 7),
            TextView.getMediumText14("+", Assets.poppinsLight,
                color: AppColors.xFon3Text, lines: 1),
            CommonPadding.sizeBoxWithWidth(width: 7),
            SvgPicture.asset('assets/svg/mute_icon.svg'),
          ],
        ),
      );

  Widget getHeadlineContainer({required String text, required String icon}) =>
      Container(
        height: sizes!.heightRatio * 80,
        width: sizes!.widthRatio * 67,
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
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: sizes!.heightRatio * 19),
          child: Column(
            children: [
              SvgPicture.asset(icon),
              CommonPadding.sizeBoxWithHeight(height: 2),
              TextView.getSmallText12(text, Assets.poppinsRegular,
                  color: AppColors.xFont2Text, lines: 1)
            ],
          ),
        ),
      );

  Widget getHeaderContainer() => Padding(
        padding: EdgeInsets.only(
            left: sizes!.widthRatio * 25,
            right: sizes!.widthRatio * 25,
            top: sizes!.heightRatio * 30),
        child: Container(
          height: sizes!.heightRatio * 144,
          width: sizes!.widthRatio * 325,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
                image: AssetImage('assets/png/masjid_icon@2x.png')),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.xLinearColorOne,
                AppColors.xLinearColorTwo,
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: sizes!.widthRatio * 22,
                vertical: sizes!.heightRatio * 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView.getText8("Agora", Assets.poppinsLight,
                        color: AppColors.whiteTextColor, lines: 1),
                    CommonPadding.sizeBoxWithHeight(height: 3),
                    TextView.getTextWith20("Asr", Assets.poppinsMedium,
                        color: AppColors.whiteTextColor, lines: 1),
                    CommonPadding.sizeBoxWithHeight(height: 3),
                    TextView.getText8("Próximo", Assets.poppinsLight,
                        color: AppColors.whiteTextColor, lines: 1),
                    CommonPadding.sizeBoxWithHeight(height: 3),
                    TextView.getSubHeadingTextWith15(
                        "Maghrib", Assets.poppinsMedium,
                        color: AppColors.whiteTextColor, lines: 1),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextView.getTextWith20("03:30 PM", Assets.poppinsMedium,
                        color: AppColors.whiteTextColor, lines: 1),
                    CommonPadding.sizeBoxWithHeight(height: 2),
                    TextView.getMediumText14(
                        "Terça, Fev 24", Assets.poppinsRegular,
                        color: AppColors.whiteTextColor, lines: 1),
                    CommonPadding.sizeBoxWithHeight(height: 2),
                    TextView.getTextWith20("23", Assets.poppinsRegular,
                        color: AppColors.whiteTextColor, lines: 1),
                    CommonPadding.sizeBoxWithHeight(height: 2),
                    TextView.getText8("Rajab 1443", Assets.poppinsLight,
                        color: AppColors.whiteTextColor, lines: 1),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
