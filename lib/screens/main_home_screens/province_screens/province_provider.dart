import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mesquitas_em_moz/models/provinces/GetProvinceResponse.dart';
import 'package:mesquitas_em_moz/network_manager/api_url.dart';
import 'package:mesquitas_em_moz/widgets/loader.dart';

import '../../../network_manager/models.dart';
import '../../../network_manager/my_api.dart';

class ProvinceProvider extends ChangeNotifier {
  BuildContext? context;
  final Logger _logger = Logger();
  final Loader _loader = Loader();

  bool isDataLoaded = false;
  GetProvinceResponse getProvinceResponse = GetProvinceResponse();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    isDataLoaded = false;
  }

  Future<void> getProvinceList({required BuildContext context}) async {
    try {
      _loader.showLoader(context: context);
      Map<String, dynamic> header = {"Content-Type": "application/json"};
      debugPrint("URL: $getProvinceApiUrl");

      getProvinceResponse = await MyApi.callGetApi(
          url: getProvinceApiUrl,
          myHeaders: header,
          modelName: Models.getProvinceModel);

      if (getProvinceResponse.code == 1) {
        debugPrint("getProvinceResponse: ${getProvinceResponse.toJson()}");
        _loader.hideLoader(context: context);
        isDataLoaded = true;
        notifyListeners();
      } else {
        debugPrint("getProvinceResponse: Something wrong");
        _loader.hideLoader(context: context);
      }
    } catch (e) {
      _logger.d("getProvinceResponseError: ${e.toString()} ");
    }
  }
}
