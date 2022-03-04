import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mesquitas_em_moz/widgets/loader.dart';

class QuiblaProvider extends ChangeNotifier {
  BuildContext? context;
  final Logger _logger = Logger();
  final Loader _loader = Loader();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
  }
}
