import '../models/duas/GetDuaTypesResponse.dart';
import '../models/error_model/error_model.dart';
import '../models/masjids/GetMasjidDetailResponse.dart';
import '../models/masjids/GetMasjidsResponse.dart';
import '../models/provinces/GetProvinceResponse.dart';

class Models {
  static const String errorModel = "ERROR_MODEL";
  static const String getProvinceModel = "getProvinceModel";
  static const String getMasjidModel = "getMasjidModel";
  static const String getMasjidDetailModel = "getMasjidDetailModel";
  static const String getDuaTypesModel = "getDuaTypesModel";

  static Future<dynamic> getModelObject(
      String modelName, Map<String, dynamic> json) async {
    switch (modelName) {
      case getProvinceModel:
        return GetProvinceResponse.fromJson(json);
      case getMasjidModel:
        return GetMasjidsResponse.fromJson(json);
      case getMasjidDetailModel:
        return GetMasjidDetailResponse.fromJson(json);
      case getDuaTypesModel:
        return GetDuaTypesResponse.fromJson(json);
      case errorModel:
        return ErrorResponse.fromJson(json);
    }
  }
}
