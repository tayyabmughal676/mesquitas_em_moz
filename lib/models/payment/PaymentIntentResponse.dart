/// message : "Operation performed successfully"
/// code : 1
/// data : {"clientSecret":"pi_3KVYVjCa4mH3BPds1Rl1Kryx_secret_puqfO0DkzHdmN6VQN0oQzcEvi"}

class PaymentIntentResponse {
  PaymentIntentResponse({
      String? message, 
      int? code, 
      Data? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  PaymentIntentResponse.fromJson(dynamic json) {
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

/// clientSecret : "pi_3KVYVjCa4mH3BPds1Rl1Kryx_secret_puqfO0DkzHdmN6VQN0oQzcEvi"

class Data {
  Data({
      String? clientSecret,}){
    _clientSecret = clientSecret;
}

  Data.fromJson(dynamic json) {
    _clientSecret = json['clientSecret'];
  }
  String? _clientSecret;

  String? get clientSecret => _clientSecret;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['clientSecret'] = _clientSecret;
    return map;
  }

}