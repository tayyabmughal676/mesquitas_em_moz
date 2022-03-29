import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../../../models/duas/GetDuaTypesResponse.dart';
import '../../../network_manager/api_url.dart';
import '../../../network_manager/models.dart';
import '../../../network_manager/my_api.dart';
import '../../../widgets/loader.dart';

class DuasProvider extends ChangeNotifier {
  BuildContext? context;
  final Logger _logger = Logger();
  final Loader _loader = Loader();
  bool isDataLoaded = false;

  GetDuaTypesResponse getDuaTypesResponse = GetDuaTypesResponse();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    isDataLoaded = false;
  }

  Future<void> getDuaTypes({required BuildContext context}) async {
    try {
      _loader.showLoader(context: context);
      Map<String, dynamic> header = {"Content-Type": "application/json"};
      debugPrint("URL: $getDuasTypeApiUrl");

      getDuaTypesResponse = await MyApi.callGetApi(
          url: getDuasTypeApiUrl,
          myHeaders: header,
          modelName: Models.getDuaTypesModel);

      if (getDuaTypesResponse.code == 1) {
        debugPrint("getDuaTypesResponse: ${getDuaTypesResponse.toJson()}");
        _loader.hideLoader(context: context);
        isDataLoaded = true;
        notifyListeners();
      } else {
        debugPrint("getDuaTypesResponse: Something wrong");
        _loader.hideLoader(context: context);
      }
    } catch (e) {
      _logger.d("getDuaTypesResponse: ${e.toString()} ");
      _loader.hideLoader(context: context);
    }
  }
}
