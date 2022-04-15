import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mesquitas_em_moz/widgets/loader.dart';
import '../../../models/provinces/GetMosquesByProvinceIdResponse.dart';
import '../../../network_manager/api_url.dart';
import '../../../network_manager/models.dart';
import '../../../network_manager/my_api.dart';

class MasjidsProvider extends ChangeNotifier {
  BuildContext? context;
  final Logger _logger = Logger();
  final Loader _loader = Loader();
  bool isMasjidLoaded = false;

  GetMosquesByProvinceIdResponse getMosquesByProvinceIdResponse =
      GetMosquesByProvinceIdResponse();

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
    isMasjidLoaded = false;
  }

  Future<void> getMasjidByProviderId(
      {required BuildContext context, required int id}) async {
    try {
      _loader.showLoader(context: context);
      Map<String, dynamic> header = {"Content-Type": "application/json"};
      Map<String, dynamic> params = {
        "provinceId": id,
      };
      debugPrint("URL: $getMasjidByProvinceIdApiUrl$id");
      debugPrint("Params: $params");

      getMosquesByProvinceIdResponse = await MyApi.callGetApi(
          url: getMasjidByProvinceIdApiUrl,
          myHeaders: header,
          parameters: params,
          modelName: Models.getMasjidByProvinceIdModel);

      if (getMosquesByProvinceIdResponse.code == 1) {
        _logger.d(
            "getMosquesByProvinceIdResponse: ${getMosquesByProvinceIdResponse.toJson()}");
        _loader.hideLoader(context: context);
        isMasjidLoaded = true;
        notifyListeners();
      }
    } catch (e) {
      _logger.d("getMasjidsResponse: ${e.toString()} ");
      _loader.hideLoader(context: context);
    }
  }

// Future<void> getMasjidList({required BuildContext context}) async {
//   try {
//     _loader.showLoader(context: context);
//     Map<String, dynamic> header = {"Content-Type": "application/json"};
//     debugPrint("URL: $getMasjidApiUrl");
//
//     getMasjidsResponse = await MyApi.callGetApi(
//         url: getMasjidApiUrl,
//         myHeaders: header,
//         modelName: Models.getMasjidModel);
//
//     if (getMasjidsResponse.code == 1) {
//       debugPrint("getMasjidsResponse: ${getMasjidsResponse.toJson()}");
//       _loader.hideLoader(context: context);
//       isDataLoaded = true;
//       notifyListeners();
//     } else {
//       debugPrint("getMasjidsResponse: Something wrong");
//       _loader.hideLoader(context: context);
//     }
//   } catch (e) {
//     _logger.d("getMasjidsResponse: ${e.toString()} ");
//     _loader.hideLoader(context: context);
//   }
// }
}
