import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mesquitas_em_moz/models/duas/GetDuasByDuaTypeIdResponse.dart';
import 'package:mesquitas_em_moz/network_manager/api_url.dart';
import 'package:mesquitas_em_moz/widgets/loader.dart';

import '../../../../network_manager/models.dart';
import '../../../../network_manager/my_api.dart';

class RabbanaDuaProvider extends ChangeNotifier {
  BuildContext? context;
  final Logger _logger = Logger();
  final Loader _loader = Loader();
  bool isDataLoaded = false;

  GetDuasByDuaTypeIdResponse getDuasByDuaTypeIdResponse =
      GetDuasByDuaTypeIdResponse();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    isDataLoaded = false;
  }

  Future<void> getDuasList(
      {required BuildContext context, required int id}) async {
    try {
      _loader.showLoader(context: context);
      Map<String, dynamic> header = {"Content-Type": "application/json"};
      Map<String, dynamic> params = {"duaTypeId": id};
      var url = "$getDuasByTypeIdApiUrl$id";
      debugPrint("URL: $url");
      debugPrint("ID: $id");

      getDuasByDuaTypeIdResponse = await MyApi.callGetApi(
          url: url,
          myHeaders: header,
          parameters: params,
          modelName: Models.getDuaByTypeIdModel);

      if (getDuasByDuaTypeIdResponse.code == 1) {
        debugPrint(
            "getDuasByDuaTypeIdResponse: ${getDuasByDuaTypeIdResponse.toJson()}");
        _loader.hideLoader(context: context);
        isDataLoaded = true;
        notifyListeners();
      } else {
        debugPrint("getDuasByDuaTypeIdResponse: Something wrong");
        _loader.hideLoader(context: context);
      }
    } catch (e) {
      _logger.d("getDuasByDuaTypeIdResponseError: ${e.toString()}");
      _loader.hideLoader(context: context);
    }
  }
}
