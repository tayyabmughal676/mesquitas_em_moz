import 'package:flutter/material.dart';

import '../../../res/colors.dart';
import '../../../res/res.dart';
import '../../project_widgets/project_widgets.dart';

class QuiblaScreen extends StatefulWidget {
  const QuiblaScreen({Key? key}) : super(key: key);

  @override
  State<QuiblaScreen> createState() => _QuiblaScreenState();
}

class _QuiblaScreenState extends State<QuiblaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ProjectWidget.getAppBar(title: "Direção do QUIBLA"),
        body: Container(
          height: sizes!.height,
          width: sizes!.width,
          decoration: const BoxDecoration(
              // color: AppColors.xFont2Text,
              image: DecorationImage(
                  image: AssetImage("assets/png/main_bg_image.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }
}
