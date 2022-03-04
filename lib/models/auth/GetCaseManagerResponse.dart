/// message : "Operation performed successfully"
/// code : 1
/// data : [{"caseManagerId":1,"name":"Rick Fulton","email":"rick@pacificshoresrecovery.com"},{"caseManagerId":2,"name":"Jerry Larabell","email":"jerry@pacificshoresrecovery.com"},{"caseManagerId":3,"name":"Adriana Alvarez","email":"adriana@pacificshoresrecovery.com"},{"caseManagerId":4,"name":"Carmine Cunneen","email":"carmine@pacificshoresrecovery.com"},{"caseManagerId":5,"name":"Corey Bierman","email":"corey@pacificshoresrecovery.com"}]

class GetCaseManagerResponse {
  GetCaseManagerResponse({
      String? message, 
      int? code, 
      List<Data>? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  GetCaseManagerResponse.fromJson(dynamic json) {
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

/// caseManagerId : 1
/// name : "Rick Fulton"
/// email : "rick@pacificshoresrecovery.com"

class Data {
  Data({
      int? caseManagerId, 
      String? name, 
      String? email,}){
    _caseManagerId = caseManagerId;
    _name = name;
    _email = email;
}

  Data.fromJson(dynamic json) {
    _caseManagerId = json['caseManagerId'];
    _name = json['name'];
    _email = json['email'];
  }
  int? _caseManagerId;
  String? _name;
  String? _email;

  int? get caseManagerId => _caseManagerId;
  String? get name => _name;
  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['caseManagerId'] = _caseManagerId;
    map['name'] = _name;
    map['email'] = _email;
    return map;
  }

}