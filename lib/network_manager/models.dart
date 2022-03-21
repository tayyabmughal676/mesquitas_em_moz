import 'package:mesquitas_em_moz/models/masjids/GetMasjidDetailResponse.dart';

import '../models/error_model/error_model.dart';
import '../models/masjids/GetMasjidsResponse.dart';
import '../models/provinces/GetProvinceResponse.dart';

class Models {
  static const String errorModel = "ERROR_MODEL";
  static const String getProvinceModel = "getProvinceModel";
  static const String getMasjidModel = "getMasjidModel";
  static const String getMasjidDetailModel = "getMasjidDetailModel";

  static Future<dynamic> getModelObject(
      String modelName, Map<String, dynamic> json) async {
    switch (modelName) {
      case getProvinceModel:
        return GetProvinceResponse.fromJson(json);
      case getMasjidModel:
        return GetMasjidsResponse.fromJson(json);
      case getMasjidDetailModel:
        return GetMasjidDetailResponse.fromJson(json);
      case errorModel:
        return ErrorResponse.fromJson(json);
    }
  }
}
