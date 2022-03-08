import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../res/colors.dart';
import '../../../res/res.dart';
import '../../project_widgets/project_widgets.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'dart:math' as math;

class QuiblaScreen extends StatefulWidget {
  const QuiblaScreen({Key? key}) : super(key: key);

  @override
  State<QuiblaScreen> createState() => _QuiblaScreenState();
}

class _QuiblaScreenState extends State<QuiblaScreen> {
  bool _hasPermissions = false;
  CompassEvent? _lastRead;
  DateTime? _lastReadAt;

  @override
  void initState() {
    _fetchPermissionStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ProjectWidget.getAppBar(title: "Direção do QUIBLA"),
        body: Container(
          height: sizes!.height,
          width: sizes!.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/png/main_bg_image.png"),
                  fit: BoxFit.cover)),
          child: Builder(builder: (context) {
            if (_hasPermissions) {
              return Column(
                children: [
                  // _buildManualReader(),
                  Expanded(child: _buildCompass()),
                ],
              );
            } else {
              return _buildPermissionSheet();
            }
          }),
        ),
      ),
    );
    // );
  }

  Widget _buildManualReader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ElevatedButton(
            child: const Text('Read Value'),
            onPressed: () async {
              final CompassEvent tmp = await FlutterCompass.events!.first;
              setState(() {
                _lastRead = tmp;
                _lastReadAt = DateTime.now();
              });
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$_lastRead',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Text(
                    '$_lastReadAt',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompass() {
    return StreamBuilder<CompassEvent>(
      stream: FlutterCompass.events,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error reading heading: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        double? direction = snapshot.data!.heading;
        // if direction is null, then device does not support this sensor
        // show error message
        if (direction == null) {
          return const Center(
            child: Text("Device does not have sensors !"),
          );
        }

        return Stack(children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: sizes!.widthRatio * 10,
                vertical: sizes!.heightRatio * 10),
            child: Material(
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              elevation: 4.0,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.xFont2Text, width: 10)),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.xFon3Text,
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.xFon3Text, width: 5)),
                  child: Transform.rotate(
                    angle: (direction * (math.pi / 180) * -1),
                    child: SvgPicture.asset('assets/svg/navigator_icon.svg'),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: sizes!.heightRatio * 280,
                width: sizes!.widthRatio * 280,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: AppColors.blackTextColor, width: 2)),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/svg/north_icon.svg'),
                  SvgPicture.asset('assets/svg/south_icon.svg'),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: sizes!.heightRatio * 155),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/svg/west_icon.svg'),
                  SvgPicture.asset('assets/svg/east_icon.svg'),
                ],
              ),
            ),
          )
        ]);
      },
    );
  }

  Widget _buildPermissionSheet() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Location Permission Required'),
          ElevatedButton(
            child: const Text('Request Permissions'),
            onPressed: () {
              Permission.locationWhenInUse.request().then((ignored) {
                _fetchPermissionStatus();
              });
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            child: const Text('Open App Settings'),
            onPressed: () {
              openAppSettings().then((opened) {
                //
              });
            },
          )
        ],
      ),
    );
  }

  void _fetchPermissionStatus() {
    Permission.locationWhenInUse.status.then((status) {
      if (mounted) {
        setState(() => _hasPermissions = status == PermissionStatus.granted);
      }
    });
  }
}
