import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../../local_cache/utils.dart';

class GetStartedProvider extends ChangeNotifier {
  BuildContext? context;
  final Logger _logger = Logger();
  bool isUserLogin = false;

  Future<void> init({@required BuildContext? context}) async {
    PreferenceUtils.init();
    this.context = context;
    isUserLogin = false;
    // await navigateToNextScreen();
  }

// Future<void> navigateToNextScreen() async {
//   await Future.delayed(const Duration(
//     seconds: 3,
//   ));
//
//   if (PreferenceUtils.getString(Strings.loginEmail)!.isNotEmpty &&
//       PreferenceUtils.getString(Strings.loginPassword)!.isNotEmpty) {
//     debugPrint(
//         "LoginEmail: ${PreferenceUtils.getString(Strings.loginEmail)}");
//     debugPrint(
//         "LoginPassword: ${PreferenceUtils.getString(Strings.loginPassword)}");
//
//     _logger.d(
//         "LoginEmail: ${PreferenceUtils.getString(Strings.loginEmail)}, LoginPassword: ${PreferenceUtils.getString(Strings.loginPassword)} ");
//
//     Navigator.pushReplacement(
//         context!, SlideRightRoute(page: const MainHomeScreen()));
//     isUserLogin = true;
//   } else {
//     _logger.d(
//         "Failed->LoginEmail: ${PreferenceUtils.getString(Strings.loginEmail)}, LoginPassword: ${PreferenceUtils.getString(Strings.loginPassword)} ");
//
//     Navigator.pushReplacement(
//         context!, SlideRightRoute(page: const LoginScreen()));
//
//     // Navigator.pushReplacement(context!,
//     //     MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
//
//     isUserLogin = false;
//   }
//   notifyListeners();
// }
}
