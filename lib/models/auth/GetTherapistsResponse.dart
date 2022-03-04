/// message : "Operation performed successfully"
/// code : 1
/// data : [{"therapistId":1,"name":"Brad Kingma","email":"brad@pacificshoresrecovery.com"},{"therapistId":2,"name":"Eden Martelly","email":"eden@pacificshoresrecovery.com"},{"therapistId":3,"name":"Kirsten Gist","email":"kirsten@pacificshoresrecovery.com"},{"therapistId":4,"name":"Naomi Posner-Stein","email":"naomi@pacificshoresrecovery.com"}]

class GetTherapistsResponse {
  GetTherapistsResponse({
      String? message, 
      int? code, 
      List<Data>? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  GetTherapistsResponse.fromJson(dynamic json) {
    _message = json['message'];
    _code = json['code'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  String? _message;
  int? _code;
  List<Data>? _data;

  String? get message => _message;
  int? get code => _code;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['code'] = _code;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// therapistId : 1
/// name : "Brad Kingma"
/// email : "brad@pacificshoresrecovery.com"

class Data {
  Data({
      int? therapistId, 
      String? name, 
      String? email,}){
    _therapistId = therapistId;
    _name = name;
    _email = email;
}

  Data.fromJson(dynamic json) {
    _therapistId = json['therapistId'];
    _name = json['name'];
    _email = json['email'];
  }
  int? _therapistId;
  String? _name;
  String? _email;

  int? get therapistId => _therapistId;
  String? get name => _name;
  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['therapistId'] = _therapistId;
    map['name'] = _name;
    map['email'] = _email;
    return map;
  }

}