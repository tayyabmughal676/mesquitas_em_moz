/// message : "Operation performed successfully"
/// code : 1
/// data : {"message":"Operation Successful."}

class UpdateSoberCounterResponse {
  UpdateSoberCounterResponse({
    String? message,
    int? code,
    Data? data,
  }) {
    _message = message;
    _code = code;
    _data = data;
  }

  UpdateSoberCounterResponse.fromJson(dynamic json) {
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

/// message : "Operation Successful."

class Data {
  Data({
    String? message,
  }) {
    _message = message;
  }

  Data.fromJson(dynamic json) {
    _message = json['message'];
  }

  String? _message;

  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    return map;
  }
}
