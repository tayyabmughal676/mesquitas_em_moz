/// message : "Operation performed successfully"
/// code : 1
/// data : {"filePath":"/Content/img/dummy_profile.png"}

class SignUpPhotoUploadedResponse {
  SignUpPhotoUploadedResponse({
    String? message,
    int? code,
    Data? data,
  }) {
    _message = message;
    _code = code;
    _data = data;
  }

  SignUpPhotoUploadedResponse.fromJson(dynamic json) {
    _message = json['message'];
    _code = json['code'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  String? _message;
  int? _code;
  Data? _data;

  String? get message => _message;

  int? get code => _code;

  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['code'] = _code;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

/// filePath : "/Content/img/dummy_profile.png"

class Data {
  Data({
    String? filePath,
  }) {
    _filePath = filePath;
  }

  Data.fromJson(dynamic json) {
    _filePath = json['filePath'];
  }

  String? _filePath;

  String? get filePath => _filePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['filePath'] = _filePath;
    return map;
  }
}
