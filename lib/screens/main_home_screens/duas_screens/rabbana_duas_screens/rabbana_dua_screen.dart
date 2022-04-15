import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mesquitas_em_moz/animations/slide_right.dart';
import 'package:mesquitas_em_moz/res/extensions.dart';
import 'package:provider/provider.dart';

import '../../../../res/assets.dart';
import '../../../../res/colors.dart';
import '../../../../res/common_padding.dart';
import '../../../../res/res.dart';
import '../../../../widgets/text_views.dart';
import '../../../project_widgets/project_widgets.dart';
import '../dua_after_salah_screens/dua_after_salah_screen.dart';
import 'rabbana_dua_provider.dart';

class RabbanaDuaScreen extends StatefulWidget {
  final int? duaId;

  const RabbanaDuaScreen({Key? key, this.duaId}) : super(key: key);

  @override
  State<RabbanaDuaScreen> createState() => _RabbanaDuaScreenState();
}

class _RabbanaDuaScreenState extends State<RabbanaDuaScreen> {
  late RabbanaDuaProvider rabbanaDuaProvider;

  @override
  void initState() {
    rabbanaDuaProvider = RabbanaDuaProvider();
    rabbanaDuaProvider =
        Provider.of<RabbanaDuaProvider>(context, listen: false);
    rabbanaDuaProvider.init(context: context);

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      rabbanaDuaProvider.getDuasList(context: context, id: widget.duaId!);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<RabbanaDuaProvider>(context, listen: true);
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
              rabbanaDuaProvider.isDataLoaded == true
                  ? Expanded(
                      child: ListView.builder(
                          itemCount: rabbanaDuaProvider
                              .getDuasByDuaTypeIdResponse.data!.length,
                          itemBuilder: (context, index) {
                            var duaId = rabbanaDuaProvider
                                .getDuasByDuaTypeIdResponse.data![index].duaId;
                            var duaName = rabbanaDuaProvider
                                .getDuasByDuaTypeIdResponse.data![index].name
                                .toString();

                            return Padding(
                              padding: EdgeInsets.only(
                                  top: sizes!.heightRatio * 5,
                                  bottom: sizes!.heightRatio * 5),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        SlideRightRoute(
                                            page: DuaAfterSalahScreen(
                                          duaId: duaId,
                                        )));
                                  },
                                  child: getDuaRowContainer(duaName: duaName)
                                      .get25HorizontalPadding()),
                            );
                          }))
                  : Center(
                      child: TextView.getMediumText14(
                          "No Data Available", Assets.poppinsSemiBold,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.bold,
                          lines: 1),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getDuaRowContainer({required String duaName}) => Container(
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
                duaName,
                Assets.poppinsMedium,
                color: AppColors.xFont2Text,
                lines: 2,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.center,
              ),
              SvgPicture.asset("assets/svg/dua_forward_icon.svg"),
            ],
          ),
        ),
      );
}
