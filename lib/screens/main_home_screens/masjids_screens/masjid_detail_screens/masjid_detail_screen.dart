import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mesquitas_em_moz/res/assets.dart';
import 'package:mesquitas_em_moz/res/common_padding.dart';
import 'package:mesquitas_em_moz/res/extensions.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/masjids_screens/masjid_detail_screens/masjid_detail_provider.dart';
import 'package:mesquitas_em_moz/screens/project_widgets/project_widgets.dart';
import 'package:provider/provider.dart';

import '../../../../res/colors.dart';
import '../../../../res/res.dart';
import '../../../../widgets/text_views.dart';

class MasjidDetailScreen extends StatefulWidget {
  final dynamic id;

  const MasjidDetailScreen({Key? key, this.id}) : super(key: key);

  @override
  State<MasjidDetailScreen> createState() => _MasjidDetailScreenState();
}

class _MasjidDetailScreenState extends State<MasjidDetailScreen> {
  late MasjidDetailProvider masjidDetailProvider;

  @override
  void initState() {
    masjidDetailProvider = MasjidDetailProvider();
    masjidDetailProvider =
        Provider.of<MasjidDetailProvider>(context, listen: false);
    masjidDetailProvider.init(context: context);

    debugPrint("widgetId: ${widget.id}");

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      masjidDetailProvider.getMasjidById(context: context, id: 2);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<MasjidDetailProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      appBar: ProjectWidget.getAppBarWithBackButton(
          title: "Mesquita central de chimoio", context: context),
      body: SingleChildScrollView(
        child: Container(
          // height: sizes!.height,
          // width: sizes!.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/png/main_bg_image.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              CommonPadding.sizeBoxWithHeight(height: 22),
              Container(
                height: sizes!.heightRatio * 184,
                width: sizes!.widthRatio * 325,
                decoration: BoxDecoration(
                  color: AppColors.whiteTextColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.xContainerShadow2,
                      blurRadius: 35,
                      offset: Offset(0, 15),
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/png/main_banner_image@3x.png',
                  fit: BoxFit.cover,
                ),
              ).get25HorizontalPadding(),
              CommonPadding.sizeBoxWithHeight(height: 30),
              masjidDetailProvider.isDataLoaded == true
                  ? Align(
                      alignment: Alignment.centerLeft,
                      child: TextView.getTextWith20(
                          masjidDetailProvider
                              .getMasjidDetailResponse.data!.name,
                          Assets.poppinsMedium,
                          color: AppColors.xFont2Text,
                          lines: 1),
                    ).get25HorizontalPadding()
                  : Center(
                      child: TextView.getRegularS17W600Text(
                          "No Data Found", Assets.poppinsMedium,
                          color: AppColors.psGetStartedButtonColor, lines: 1),
                    ),
              CommonPadding.sizeBoxWithHeight(height: 15),
              _namazContainer(),
              CommonPadding.sizeBoxWithHeight(height: 30),
              getEventContainer(),
              CommonPadding.sizeBoxWithHeight(height: 30),
              getEventContainer(),
              CommonPadding.sizeBoxWithHeight(height: 30),
              getEventContainer(),
              CommonPadding.sizeBoxWithHeight(height: 30),
            ],
          ),
        ),
      ),
    ));
  }

  Widget getEventContainer() => Container(
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
      ).get25HorizontalPadding();

  Widget _namazContainer() => Container(
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
      );

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
}
