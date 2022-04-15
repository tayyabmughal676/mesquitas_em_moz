import 'package:flutter/material.dart';
import 'package:mesquitas_em_moz/res/extensions.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/duas_screens/dua_after_salah_screens/dua_after_salah_provider.dart';
import 'package:provider/provider.dart';

import '../../../../res/assets.dart';
import '../../../../res/colors.dart';
import '../../../../res/common_padding.dart';
import '../../../../res/res.dart';
import '../../../../widgets/text_views.dart';
import '../../../project_widgets/project_widgets.dart';

class DuaAfterSalahScreen extends StatefulWidget {
  final dynamic duaId;

  const DuaAfterSalahScreen({Key? key, this.duaId}) : super(key: key);

  @override
  State<DuaAfterSalahScreen> createState() => _DuaAfterSalahScreenState();
}

class _DuaAfterSalahScreenState extends State<DuaAfterSalahScreen> {
  late DuaAfterSalahProvider duaAfterSalahProvider;

  @override
  void initState() {
    duaAfterSalahProvider = DuaAfterSalahProvider();
    duaAfterSalahProvider =
        Provider.of<DuaAfterSalahProvider>(context, listen: false);
    duaAfterSalahProvider.init(context: context);

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      duaAfterSalahProvider.getDuaDetail(context: context, id: widget.duaId!);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<DuaAfterSalahProvider>(context, listen: true);
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
          child: duaAfterSalahProvider.isDataLoaded
              ? Column(
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
                                duaAfterSalahProvider
                                    .getDuaDetailResponse.data!.detail
                                    .toString(),
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
                                duaAfterSalahProvider
                                    .getDuaDetailResponse.data!.translation
                                    .toString(),
                                Assets.poppinsLight,
                                color: AppColors.xFont2Text,
                                lines: 10,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                    ).get25HorizontalPadding()
                  ],
                )
              : Center(
                  child: TextView.getMediumText14(
                      "No Data Available", Assets.poppinsMedium,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.bold,
                      lines: 1),
                ),
        ),
      ),
    );
  }
}
