/// message : "Operation performed successfully"
/// code : 1
/// data : {"soberCounter":0}

class GetSoberCounterResponse {
  GetSoberCounterResponse({
      String? message, 
      int? code, 
      Data? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  GetSoberCounterResponse.fromJson(dynamic json) {
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

/// soberCounter : 0

class Data {
  Data({
      int? soberCounter,}){
    _soberCounter = soberCounter;
}

  Data.fromJson(dynamic json) {
    _soberCounter = json['soberCounter'];
  }
  int? _soberCounter;

  int? get soberCounter => _soberCounter;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['soberCounter'] = _soberCounter;
    return map;
  }

}