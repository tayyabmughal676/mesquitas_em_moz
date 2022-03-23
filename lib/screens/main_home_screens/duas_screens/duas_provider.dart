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
          url: getMasjidApiUrl,
          myHeaders: header,
          modelName: Models.getDuaTypesModel);

      if (getDuaTypesResponse.code == 1) {
        debugPrint("getDuaTypesResponse: ${getDuaTypesResponse.toJson()}");
        _loader.hideLoader(context: context);
        isDataLoaded = true;
        notifyListeners();
      } else {
        debugPrint("isDataLoaded: Something wrong");
        _loader.hideLoader(context: context);
      }
    } catch (e) {
      _logger.d("isDataLoaded: ${e.toString()} ");
      _loader.hideLoader(context: context);
    }
  }
}
