import 'package:flutter/material.dart';
import 'package:mesquitas_em_moz/screens/project_widgets/project_widgets.dart';

import '../../../res/colors.dart';
import '../../../res/res.dart';

class MasjidsScreen extends StatefulWidget {
  const MasjidsScreen({Key? key}) : super(key: key);

  @override
  State<MasjidsScreen> createState() => _MasjidsScreenState();
}

class _MasjidsScreenState extends State<MasjidsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            ProjectWidget.getAppBar(title: "Mesquitas na Cidade de Chimoio"),
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
            children: const [],
          ),
        ),
      ),
    );
  }
}
