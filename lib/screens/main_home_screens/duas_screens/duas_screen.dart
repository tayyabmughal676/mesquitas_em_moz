import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mesquitas_em_moz/res/assets.dart';
import 'package:mesquitas_em_moz/res/common_padding.dart';
import 'package:mesquitas_em_moz/screens/project_widgets/project_widgets.dart';
import 'package:mesquitas_em_moz/widgets/text_views.dart';

import '../../../res/colors.dart';
import '../../../res/res.dart';

class DuasScreen extends StatefulWidget {
  const DuasScreen({Key? key}) : super(key: key);

  @override
  State<DuasScreen> createState() => _DuasScreenState();
}

class _DuasScreenState extends State<DuasScreen> {
  var duaList = [
    "Duas Depois\n Da Oração",
    "Adhkar\n Da Manha",
    "Adhkar\n Da Noite",
    "Duas\n Diários",
    "40 Duas\n De Rabbana"
  ];

  var duaIconList = [
    "assets/svg/dua_one.svg",
    "assets/svg/dua_icon_two.svg",
    "assets/svg/dua_three.svg",
    "assets/svg/dua_four.svg",
    "assets/svg/40_duas.svg"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ProjectWidget.getAppBar(title: "Duas"),
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
              CommonPadding.sizeBoxWithHeight(height: 30),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _getDuasContainer(title: duaList[0], icon: duaIconList[0]),
                    _getDuasContainer(title: duaList[1], icon: duaIconList[1]),
                    _getDuasContainer(title: duaList[2], icon: duaIconList[2]),
                  ],
                ),
              ),
              CommonPadding.sizeBoxWithHeight(height: 30),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _getDuasContainer(title: duaList[3], icon: duaIconList[3]),
                    _getDuasContainer(title: duaList[4], icon: duaIconList[4]),
                    SizedBox(
                      width: sizes!.widthRatio * 88,
                      height: sizes!.heightRatio * 122,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getDuasContainer({required String title, required String icon}) =>
      Container(
          width: sizes!.widthRatio * 88,
          height: sizes!.heightRatio * 122,
          decoration: BoxDecoration(
            color: AppColors.whiteTextColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: AppColors.xContainerShadow,
                blurRadius: 32, //18
                offset: Offset(0, 15),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: sizes!.widthRatio * 10,
                vertical: sizes!.heightRatio * 15),
            child: Column(
              children: [
                Center(child: SvgPicture.asset(icon)),
                CommonPadding.sizeBoxWithHeight(height: 10),
                Center(
                  child: TextView.getSmallText12(title, Assets.poppinsMedium,
                      color: AppColors.blackTextColor,
                      lines: 2,
                      textAlign: TextAlign.center),
                )
              ],
            ),
          ));
}
