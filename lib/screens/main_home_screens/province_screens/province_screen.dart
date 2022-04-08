import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mesquitas_em_moz/animations/slide_right.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/masjids_screens/masjids_screen.dart';
import 'package:provider/provider.dart';

import '../../../res/assets.dart';
import '../../../res/colors.dart';
import '../../../res/res.dart';
import '../../../widgets/text_views.dart';
import '../../project_widgets/project_widgets.dart';
import 'province_provider.dart';

class ProvinceScreen extends StatefulWidget {
  const ProvinceScreen({Key? key}) : super(key: key);

  @override
  State<ProvinceScreen> createState() => _ProvinceScreenState();
}

class _ProvinceScreenState extends State<ProvinceScreen> {
  ProvinceProvider provinceProvider = ProvinceProvider();

  @override
  void initState() {
    provinceProvider = ProvinceProvider();
    provinceProvider = Provider.of<ProvinceProvider>(context, listen: false);
    provinceProvider.init(context: context);

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      provinceProvider.getProvinceList(context: context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<ProvinceProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: ProjectWidget.getAppBar(
            title: "Provincia", icon: 'assets/svg/bell_icon.svg'),
        body: Container(
          height: sizes!.height,
          width: sizes!.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/png/main_bg_image.png"),
                  fit: BoxFit.cover)),
          child: provinceProvider.isDataLoaded == true
              ? Column(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(
                          left: sizes!.widthRatio * 25,
                          right: sizes!.widthRatio * 25,
                          top: sizes!.heightRatio * 25),
                      child: ListView.builder(
                          itemCount:
                              provinceProvider.getProvinceResponse.data!.length,
                          itemBuilder: (context, index) {
                            var name = provinceProvider
                                .getProvinceResponse.data![index].name
                                .toString();
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: sizes!.heightRatio * 5),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, SlideRightRoute(page: const MasjidsScreen()));
                                },
                                  child: getProvinceContainer(name: name)),
                            );
                          }),
                    )),
                  ],
                )
              : Center(
                  child: TextView.getRegularS17W600Text(
                      "No Provinca Found", Assets.poppinsMedium,
                      color: AppColors.psGetStartedButtonColor, lines: 1),
                ),
        ),
      ),
    );
  }

  Widget getProvinceContainer({required String name}) => Container(
        height: sizes!.heightRatio * 71,
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
              TextView.getSubHeadingTextWith15(name, Assets.poppinsMedium,
                  color: AppColors.xSubheadingTextColor,
                  lines: 1,
                  fontWeight: FontWeight.normal),
              SvgPicture.asset("assets/svg/forward_icon.svg"),
            ],
          ),
        ),
      );
}
