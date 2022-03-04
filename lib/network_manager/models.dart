import '../models/error_model/error_model.dart';

class Models {
  static const String errorModel = "ERROR_MODEL";

  static Future<dynamic> getModelObject(
      String modelName, Map<String, dynamic> json) async {
    switch (modelName) {
      case errorModel:
        return ErrorResponse.fromJson(json);
    }
  }
}
