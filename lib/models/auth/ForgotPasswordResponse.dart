/// message : "Operation performed successfully"
/// code : 1
/// data : {"password":"633876"}

class ForgotPasswordResponse {
  ForgotPasswordResponse({
      String? message, 
      int? code, 
      Data? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  ForgotPasswordResponse.fromJson(dynamic json) {
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

/// password : "633876"

class Data {
  Data({
      String? password,}){
    _password = password;
}

  Data.fromJson(dynamic json) {
    _password = json['password'];
  }
  String? _password;

  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['password'] = _password;
    return map;
  }

}