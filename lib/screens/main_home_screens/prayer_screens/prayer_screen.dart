import 'package:flutter/material.dart';

import '../../../res/colors.dart';
import '../../../res/res.dart';
import '../../project_widgets/project_widgets.dart';

class PrayerScreen extends StatefulWidget {
  const PrayerScreen({Key? key}) : super(key: key);

  @override
  State<PrayerScreen> createState() => _PrayerScreenState();
}

class _PrayerScreenState extends State<PrayerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: sizes!.height,
        width: sizes!.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/png/main_bg_image.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: ProjectWidget.getAppBar(title: "Início"),
          body: Column(
            children: const [],
          ),
        ),
      ),
    );
  }
}
