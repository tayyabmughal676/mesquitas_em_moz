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
  final int? mosqueId;

  const MasjidDetailScreen({Key? key, this.mosqueId}) : super(key: key);

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

    debugPrint("widgetId: ${widget.mosqueId}");

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      masjidDetailProvider.getMasjidById(
          context: context, id: widget.mosqueId!);
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
      body: Container(
        // height: sizes!.height,
        // width: sizes!.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/png/main_bg_image.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
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
              (masjidDetailProvider.isDataLoaded == true)
                  ? _namazContainer(
                      nascerTiming: masjidDetailProvider
                          .getMasjidDetailResponse.data!.nascerDoSol
                          .toString(),
                      zuhrTiming: masjidDetailProvider
                          .getMasjidDetailResponse.data!.zuhr
                          .toString(),
                      fajrTiming: masjidDetailProvider
                          .getMasjidDetailResponse.data!.fajr
                          .toString(),
                      maghribTiming: masjidDetailProvider
                          .getMasjidDetailResponse.data!.maghrib
                          .toString(),
                      asrTiming: masjidDetailProvider
                          .getMasjidDetailResponse.data!.asr
                          .toString(),
                      ishaTiming: masjidDetailProvider
                          .getMasjidDetailResponse.data!.isha
                          .toString())
                  : Container(),
              CommonPadding.sizeBoxWithHeight(height: 30),
              masjidDetailProvider
                      .getMasjidDetailResponse.data!.events!.isNotEmpty
                  ? SizedBox(
                      child: ListView.builder(
                          itemCount: masjidDetailProvider
                              .getMasjidDetailResponse.data!.events!.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            var image = masjidDetailProvider
                                .getMasjidDetailResponse
                                .data!
                                .events![index]
                                .filePath
                                .toString();

                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: sizes!.heightRatio * 10),
                              child: getEventContainer(imagePath: image),
                            );
                          }),
                    )
                  : Center(
                      child: Padding(
                        padding:
                            EdgeInsets.only(bottom: sizes!.heightRatio * 30),
                        child: TextView.getMediumText14(
                            "No Event Available", Assets.poppinsSemiBold,
                            color: AppColors.blackTextColor,
                            fontWeight: FontWeight.bold,
                            lines: 2),
                      ),
                    ),
              // CommonPadding.sizeBoxWithHeight(height: 30),
              // getEventContainer(),
              // CommonPadding.sizeBoxWithHeight(height: 30),
              // getEventContainer(),
              // CommonPadding.sizeBoxWithHeight(height: 30),
              // getEventContainer(),
            ],
          ),
        ),
      ),
    ));
  }

  Widget getEventContainer({required String imagePath}) => Container(
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
        child: Image.network(
          imagePath,
          fit: BoxFit.fill,
        ),
        // Image.asset(
        //   'assets/png/event_image@2x.png',
        //   fit: BoxFit.fill,
        // ),
      ).get25HorizontalPadding();

  Widget _namazContainer(
          {required String fajrTiming,
          required String nascerTiming,
          required String zuhrTiming,
          required String asrTiming,
          required String maghribTiming,
          required String ishaTiming}) =>
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
              getNamazRow(title: "Fajr", timing: fajrTiming),
              CommonPadding.sizeBoxWithHeight(height: 10),
              const Divider(
                color: AppColors.xFon3Text,
                thickness: 0.5,
              ),
              CommonPadding.sizeBoxWithHeight(height: 10),
              getNamazRow(title: "Nascer Do Sol", timing: nascerTiming),
              CommonPadding.sizeBoxWithHeight(height: 10),
              const Divider(
                color: AppColors.xFon3Text,
                thickness: 0.5,
              ),
              CommonPadding.sizeBoxWithHeight(height: 10),
              getNamazRow(title: "Zuhr", timing: zuhrTiming),
              CommonPadding.sizeBoxWithHeight(height: 10),
              const Divider(
                color: AppColors.xFon3Text,
                thickness: 0.5,
              ),
              CommonPadding.sizeBoxWithHeight(height: 10),
              getNamazRow(title: "Asr", timing: asrTiming),
              CommonPadding.sizeBoxWithHeight(height: 10),
              const Divider(
                color: AppColors.xFon3Text,
                thickness: 0.5,
              ),
              CommonPadding.sizeBoxWithHeight(height: 10),
              getNamazRow(title: "Maghrib", timing: maghribTiming),
              CommonPadding.sizeBoxWithHeight(height: 10),
              const Divider(
                color: AppColors.xFon3Text,
                thickness: 0.5,
              ),
              CommonPadding.sizeBoxWithHeight(height: 10),
              getNamazRow(title: "Isha", timing: ishaTiming),
            ],
          ),
        ),
      );

  Widget getNamazRow({required String title, required String timing}) =>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 20),
        child: Row(
          children: [
            TextView.getMediumText18(title, Assets.poppinsMedium,
                color: AppColors.xSubheadingTextColor, lines: 1),
            const Spacer(),
            TextView.getMediumText14(timing, Assets.poppinsLight,
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
