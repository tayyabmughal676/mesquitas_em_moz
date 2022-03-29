import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mesquitas_em_moz/animations/slide_right.dart';
import 'package:mesquitas_em_moz/res/assets.dart';
import 'package:mesquitas_em_moz/res/common_padding.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/duas_screens/dua_after_salah_screens/dua_after_salah_screen.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/duas_screens/duas_provider.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/duas_screens/rabbana_duas_screens/rabbana_dua_screen.dart';
import 'package:mesquitas_em_moz/screens/project_widgets/project_widgets.dart';
import 'package:mesquitas_em_moz/widgets/text_views.dart';
import 'package:provider/provider.dart';

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

  late DuasProvider duasProvider;

  @override
  void initState() {
    duasProvider = DuasProvider();
    duasProvider = Provider.of<DuasProvider>(context, listen: false);
    duasProvider.init(context: context);

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      duasProvider.getDuaTypes(context: context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<DuasProvider>(context, listen: true);
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
          child: duasProvider.isDataLoaded == true
              ? Column(
                  children: [
                    CommonPadding.sizeBoxWithHeight(height: 30),
                    Expanded(
                        child: GridView.builder(
                      itemCount: duasProvider.getDuaTypesResponse.data!.length,
                      itemBuilder: (context, index) {
                        var duaId = duasProvider
                            .getDuaTypesResponse.data![index].duaTypeId;
                        var image = duaIconList[index];
                        var name = duasProvider
                            .getDuaTypesResponse.data![index].name
                            .toString();
                        return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  SlideRightRoute(
                                      page: DuaAfterSalahScreen(
                                    duaId: duaId,
                                  )));
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: sizes!.widthRatio * 8,
                                  vertical: sizes!.heightRatio * 5),
                              child:
                                  _getDuasContainer(title: name, icon: image),
                            ));
                      },
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                    )),
                  ],
                )
              : Center(
                  child: TextView.getMediumText16(
                      "No Dua's type found", Assets.poppinsMedium,
                      color: AppColors.psGetStartedButtonColor,
                      fontWeight: FontWeight.normal,
                      lines: 1),
                ),
        ),
      ),
    );
  }

  Widget _getDuasContainer({required String title, required String icon}) =>
      Container(
          width: sizes!.widthRatio * 70,
          height: sizes!.heightRatio * 130,
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
                vertical: sizes!.heightRatio * 7),
            child: Column(
              children: [
                Center(child: SvgPicture.asset(icon)),
                CommonPadding.sizeBoxWithHeight(height: 5),
                Center(
                  child: TextView.getSmallText12(title, Assets.poppinsMedium,
                      color: AppColors.blackTextColor,
                      lines: 5,
                      textAlign: TextAlign.center),
                )
              ],
            ),
          ));
}
