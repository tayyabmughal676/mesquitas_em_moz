import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mesquitas_em_moz/res/extensions.dart';
import 'package:mesquitas_em_moz/widgets/text_views.dart';
import 'package:provider/provider.dart';

import '../../../animations/slide_right.dart';
import '../../../res/assets.dart';
import '../../../res/colors.dart';
import '../../../res/common_padding.dart';
import '../../../res/res.dart';
import '../../project_widgets/project_widgets.dart';
import 'masjid_detail_screens/masjid_detail_screen.dart';
import 'masjids_provider.dart';

class MasjidsScreen extends StatefulWidget {
  const MasjidsScreen({Key? key}) : super(key: key);

  @override
  State<MasjidsScreen> createState() => _MasjidsScreenState();
}

class _MasjidsScreenState extends State<MasjidsScreen> {
  late MasjidsProvider masjidsProvider;

  @override
  void initState() {
    masjidsProvider = MasjidsProvider();
    masjidsProvider = Provider.of<MasjidsProvider>(context, listen: false);
    masjidsProvider.init(context: context);

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      masjidsProvider.getMasjidList(context: context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<MasjidsProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: ProjectWidget.getAppBarWithBackButton(
            title: "Mesquita central de chimoio", context: context),
        body: Container(
          height: sizes!.height,
          width: sizes!.width,
          decoration: const BoxDecoration(
            color: AppColors.xBackgroundColor,
            image: DecorationImage(
                image: AssetImage("assets/png/main_bg_image.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              getHeaderContainer(),
              CommonPadding.sizeBoxWithHeight(height: 12),

              masjidsProvider.isDataLoaded == true
                  ? Expanded(
                      child: ListView.builder(
                          itemCount:
                              masjidsProvider.getMasjidsResponse.data!.length,
                          itemBuilder: (context, index) {
                            var name = masjidsProvider
                                .getMasjidsResponse.data![index].name
                                .toString();

                            var id = masjidsProvider
                                .getMasjidsResponse.data![index].mosqueId;

                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: sizes!.heightRatio * 10),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        SlideRightRoute(
                                            page: MasjidDetailScreen(
                                          id: id,
                                        )));
                                  },
                                  child: getRowContainer(name: name)
                                      .get25HorizontalPadding()),
                            );
                          }))
                  : Center(
                      child: TextView.getRegularS17W600Text(
                          "No Mesquitas Found", Assets.poppinsMedium,
                          color: AppColors.psGetStartedButtonColor, lines: 1),
                    ),

              // getRowContainer().get25HorizontalPadding(),
            ],
          ),
        ),
      ),
    );
  }

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
                alignment: Alignment.bottomCenter,
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
                        color: AppColors.whiteTextColor,
                        lines: 1,
                        fontWeight: FontWeight.normal),
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
                        color: AppColors.whiteTextColor,
                        lines: 1,
                        fontWeight: FontWeight.normal),
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

  Widget getRowContainer({required String name}) => Container(
        height: sizes!.heightRatio * 74,
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
              left: sizes!.widthRatio * 0, right: sizes!.widthRatio * 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/png/masjid_banner_image@2x.png',
                    fit: BoxFit.fill,
                    height: sizes!.heightRatio * 76,
                    width: sizes!.widthRatio * 76,
                  ),
                  CommonPadding.sizeBoxWithWidth(width: 7),
                  TextView.getSubHeadingTextWith15(name, Assets.poppinsRegular,
                      color: AppColors.xSubheadingTextColor,
                      lines: 1,
                      fontWeight: FontWeight.normal),
                ],
              ),
              SvgPicture.asset("assets/svg/forward_icon.svg"),
            ],
          ),
        ),
      );
}
