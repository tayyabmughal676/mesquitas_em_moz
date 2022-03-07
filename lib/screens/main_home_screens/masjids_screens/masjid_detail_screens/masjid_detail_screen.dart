import 'package:flutter/material.dart';
import 'package:mesquitas_em_moz/screens/project_widgets/project_widgets.dart';

import '../../../../res/res.dart';

class MasjidDetailScreen extends StatefulWidget {
  const MasjidDetailScreen({Key? key}) : super(key: key);

  @override
  State<MasjidDetailScreen> createState() => _MasjidDetailScreenState();
}

class _MasjidDetailScreenState extends State<MasjidDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: ProjectWidget.getAppBarWithBackButton(title: "Mesquita central de chimoio"),
      body: Container(
        height: sizes!.height,
        width: sizes!.width,
        decoration: const BoxDecoration(
            // color: AppColors.xFont2Text,
            image: DecorationImage(
                image: AssetImage("assets/png/main_bg_image.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Center(
              child: Text("Masjid Details Screen"),
            )
          ],
        ),
      ),
    ));
  }
}
