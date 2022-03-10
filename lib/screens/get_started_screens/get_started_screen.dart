import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mesquitas_em_moz/animations/slide_right.dart';
import 'package:mesquitas_em_moz/screens/main_home_screens/main_home_screen.dart';
import 'package:mesquitas_em_moz/screens/project_widgets/project_widgets.dart';
import 'package:provider/provider.dart';
import '../../res/assets.dart';
import '../../res/colors.dart';
import '../../res/common_padding.dart';
import '../../res/res.dart';
import '../../widgets/text_views.dart';
import 'get_started_provider.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen>
    with SingleTickerProviderStateMixin {
  late GetStartedProvider getStartedProvider;

  @override
  void initState() {
    super.initState();
    getStartedProvider = GetStartedProvider();
    getStartedProvider =
        Provider.of<GetStartedProvider>(context, listen: false);
    getStartedProvider.init(context: context);
    WidgetsBinding.instance!.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    initializeResources(context: context);
    Provider.of<GetStartedProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Container(
              height: sizes!.height,
              width: sizes!.width,
              decoration: const BoxDecoration(
                  // color: AppColors.xBackgroundColor,
                  image: DecorationImage(
                      image: AssetImage("assets/png/main_bg_image.png"),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  CommonPadding.sizeBoxWithHeight(height: 44),
                  Center(
                    child: SvgPicture.asset(
                      "assets/svg/logo_welcome.svg",
                      height: sizes!.heightRatio * 63.05,
                      width: sizes!.widthRatio * 93.05,
                    ),
                  ),
                  CommonPadding.sizeBoxWithHeight(height: 33),
                  Center(
                      child: TextView.getTextWith22(
                          "Bem-Vindo\n Ao Aplicativo Das Mesquitas",
                          Assets.poppinsBold,
                          color: AppColors.xFont2Text,
                          lines: 2,
                          textAlign: TextAlign.center)),
                  CommonPadding.sizeBoxWithHeight(height: 18),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: sizes!.widthRatio * 25),
                    child: TextView.getSmallText12(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolo",
                        Assets.poppinsLight,
                        color: AppColors.xSubheadingTextColor,
                        lines: 2,
                        textAlign: TextAlign.center),
                  ),
                  CommonPadding.sizeBoxWithHeight(height: 30),
                  Center(
                    child: SvgPicture.asset(
                      "assets/svg/Img_welcome.svg",
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: sizes!.widthRatio * 25),
                    child: ProjectWidget.startedButton(onPress: () {
                      Navigator.pushReplacement(context,
                          SlideRightRoute(page: const MainHomeScreen()));
                    }),
                  ),
                  CommonPadding.sizeBoxWithHeight(height: 28),
                ],
              )),
        ),
      ),
    );
  }

  void moveToRegisterAsScreen() async {
    // Navigator.pushReplacement(
    //     context, SlideRightRoute(page: const RegisterAsScreen()));
  }
}
