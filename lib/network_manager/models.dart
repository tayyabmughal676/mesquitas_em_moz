import '../models/error_model/error_model.dart';
import '../models/provinces/GetProvinceResponse.dart';

class Models {
  static const String errorModel = "ERROR_MODEL";
  static const String getProvinceModel = "getProvinceModel";

  static Future<dynamic> getModelObject(
      String modelName, Map<String, dynamic> json) async {
    switch (modelName) {
      case getProvinceModel:
        return GetProvinceResponse.fromJson(json);
      case errorModel:
        return ErrorResponse.fromJson(json);
    }
  }
}
