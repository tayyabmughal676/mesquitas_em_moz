import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mesquitas_em_moz/res/colors.dart';
import 'package:mesquitas_em_moz/res/common_padding.dart';
import 'package:mesquitas_em_moz/res/res.dart';
import 'package:provider/provider.dart';

import 'duas_screens/duas_screen.dart';
import 'main_home_provider.dart';
import 'masjids_screens/masjids_screen.dart';
import 'prayer_screens/prayer_screen.dart';
import 'province_screens/province_screen.dart';
import 'quibla_screens/quibla_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  late MainHomeProvider mainHomeProvider;
  var _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    mainHomeProvider = MainHomeProvider();
    mainHomeProvider = Provider.of<MainHomeProvider>(context, listen: false);
    mainHomeProvider.init(context: context);
  }

  static const List<Widget> _widgetOptions = [
    ProvinceScreen(),
    // PrayerScreen(),
    // MasjidsScreen(),
    QuiblaScreen(),
    DuasScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    Provider.of<MainHomeProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: CircleNavBar(
        activeIcons: [
          returnSelectedIcon(icon: "assets/svg/province_icon.svg"),
          // returnSelectedIcon(icon: "assets/svg/prayer_icon.svg"),
          // returnSelectedIcon(icon: "assets/svg/masjids_icon.svg"),
          returnSelectedIcon(icon: "assets/svg/quibla_bottom_icon.svg"),
          returnSelectedIcon(icon: "assets/svg/duas_icon.svg"),
        ],
        inactiveIcons: [
          returnBottomIconProvince(
              icon: "assets/svg/province_icon.svg", text: "Provincia"),
          // returnBottomIcon(icon: "assets/svg/prayer_icon.svg", text: "Prayer"),
          // returnBottomIcon(
          // icon: "assets/svg/masjids_icon.svg", text: "Masjids"),
          returnBottomIcon(
              icon: "assets/svg/quibla_bottom_icon.svg", text: "Quibla"),
          returnBottomIcon(icon: "assets/svg/duas_icon.svg", text: "Duas"),
        ],

        color: AppColors.xFont2Text,
        height: 78,
        circleWidth: 64,
        initIndex: _currentIndex,
        onChanged: (v) {
          // TODO
          setState(() {
            _currentIndex = v;
            debugPrint("_currentIndex: $_currentIndex");
          });
        },
        // padding: const EdgeInsets.only(left: 16, right: 16),
        // cornerRadius: const BorderRadius.only(
        //   topLeft: Radius.circular(8),
        //   topRight: Radius.circular(8),
        //   bottomRight: Radius.circular(24),
        //   bottomLeft: Radius.circular(24),
        // ),
        shadowColor: Colors.white,
        elevation: 10,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
    ));
  }

  Widget returnSelectedIcon({required String icon}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SvgPicture.asset(icon),
    );
  }

  Widget returnBottomIcon({required String icon, required String text}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: sizes!.heightRatio * 10),
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            color: AppColors.xFon3Text,
          ),
          CommonPadding.sizeBoxWithHeight(height: 2),
          Text(
            text,
            style: const TextStyle(color: AppColors.xFon3Text),
          ),
        ],
      ),
    );
  }

  Widget returnBottomIconProvince(
      {required String icon, required String text}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: sizes!.heightRatio * 10),
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            color: AppColors.xFon3Text,
            height: sizes!.heightRatio * 24,
            width: sizes!.widthRatio * 24,
          ),
          CommonPadding.sizeBoxWithHeight(height: 2),
          Text(
            text,
            style: const TextStyle(color: AppColors.xFon3Text),
          ),
        ],
      ),
    );
  }
}
