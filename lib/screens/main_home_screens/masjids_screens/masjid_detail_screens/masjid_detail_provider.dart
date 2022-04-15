import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mesquitas_em_moz/models/masjids/GetMasjidDetailResponse.dart';
import '../../../../network_manager/api_url.dart';
import '../../../../network_manager/models.dart';
import '../../../../network_manager/my_api.dart';
import '../../../../widgets/loader.dart';

class MasjidDetailProvider extends ChangeNotifier {
  BuildContext? context;
  final Logger _logger = Logger();
  final Loader _loader = Loader();
  bool isDataLoaded = false;
  GetMasjidDetailResponse getMasjidDetailResponse = GetMasjidDetailResponse();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    isDataLoaded = false;
  }

  Future<void> getMasjidById(
      {required BuildContext context, required dynamic id}) async {
    try {
      _loader.showLoader(context: context);
      Map<String, dynamic> header = {"Content-Type": "application/json"};
      var url = "$getMasjidDetailApiUrl$id";
      debugPrint("URL: $url");
      debugPrint("ID: $id");

      getMasjidDetailResponse = await MyApi.callGetApi(
          url: url, myHeaders: header, modelName: Models.getMasjidDetailModel);

      if (getMasjidDetailResponse.code == 1) {
        debugPrint(
            "getMasjidDetailResponse: ${getMasjidDetailResponse.toJson()}");
        _loader.hideLoader(context: context);
        isDataLoaded = true;
        notifyListeners();
      } else {
        debugPrint("getMasjidDetailResponse: Something wrong");
        _loader.hideLoader(context: context);
      }
    } catch (e) {
      _logger.d("getMasjidDetailResponseError: ${e.toString()}");
      _loader.hideLoader(context: context);
    }
  }
}
