import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mesquitas_em_moz/models/duas/GetDuaDetailResponse.dart';
import 'package:mesquitas_em_moz/network_manager/api_url.dart';
import 'package:mesquitas_em_moz/widgets/loader.dart';

import '../../../../network_manager/models.dart';
import '../../../../network_manager/my_api.dart';

class DuaAfterSalahProvider extends ChangeNotifier {
  BuildContext? context;
  final Logger _logger = Logger();
  final Loader _loader = Loader();
  bool isDataLoaded = true;

  GetDuaDetailResponse getDuaDetailResponse = GetDuaDetailResponse();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    isDataLoaded = false;
  }

  Future<void> getDuaDetail(
      {required BuildContext context, required int id}) async {
    try {
      _loader.showLoader(context: context);
      Map<String, dynamic> header = {"Content-Type": "application/json"};

      var url = "$getDuaDetailApiUrl$id";
      debugPrint("URL: $url");
      debugPrint("ID: $id");

      getDuaDetailResponse = await MyApi.callGetApi(
          url: url, myHeaders: header, modelName: Models.getDuaDetailModel);

      if (getDuaDetailResponse.code == 1) {
        debugPrint("getDuaDetailResponse: ${getDuaDetailResponse.toJson()}");
        _loader.hideLoader(context: context);
        isDataLoaded = true;
        notifyListeners();
      } else {
        debugPrint("getDuaDetailResponse: Something wrong");
        _loader.hideLoader(context: context);
      }
    } catch (e) {
      _logger.d("getDuaDetailResponseError: ${e.toString()}");
      _loader.hideLoader(context: context);
    }
  }
}
