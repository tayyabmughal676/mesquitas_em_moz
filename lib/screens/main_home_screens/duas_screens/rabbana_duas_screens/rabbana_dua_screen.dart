import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mesquitas_em_moz/animations/slide_right.dart';
import 'package:mesquitas_em_moz/res/extensions.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/duas_screens/dua_after_salah_screens/dua_after_salah_screen.dart';

import '../../../../res/assets.dart';
import '../../../../res/colors.dart';
import '../../../../res/common_padding.dart';
import '../../../../res/res.dart';
import '../../../../widgets/text_views.dart';
import '../../../project_widgets/project_widgets.dart';

class RabbanaDuaScreen extends StatefulWidget {
  const RabbanaDuaScreen({Key? key}) : super(key: key);

  @override
  State<RabbanaDuaScreen> createState() => _RabbanaDuaScreenState();
}

class _RabbanaDuaScreenState extends State<RabbanaDuaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ProjectWidget.getAppBarWithBackButton(
            title: "40 Duas de Rabbana", context: context),
        body: Container(
          height: sizes!.height,
          width: sizes!.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/png/main_bg_image.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              CommonPadding.sizeBoxWithHeight(height: 30),
              Expanded(
                  child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              top: sizes!.heightRatio * 5,
                              bottom: sizes!.heightRatio * 5),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    SlideRightRoute(
                                        page: const DuaAfterSalahScreen()));
                              },
                              child: getDuaRowContainer()
                                  .get25HorizontalPadding()),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }

  Widget getDuaRowContainer() => Container(
        height: sizes!.heightRatio * 68,
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
              left: sizes!.widthRatio * 18, right: sizes!.widthRatio * 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/svg/number_icon.svg'),

              TextView.getSubHeadingTextWith15(
                  "Rabbanaa taqabbal minnaa innaka…", Assets.poppinsMedium,
                  color: AppColors.xFont2Text,
                  lines: 1,
                  fontWeight: FontWeight.normal,
                  textAlign: TextAlign.center),
              SvgPicture.asset("assets/svg/forward_icon.svg"),
            ],
          ),
        ),
      );
}
