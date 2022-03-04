/// message : "Operation performed successfully"
/// code : 1
/// data : {"inHouseUserDetailId":3,"userId":"8c062e3a-2f29-4fcc-89be-23140c01fd89","caseManagerId":3,"therapistId":3}

class SaveManagerAndTherapistResponse {
  SaveManagerAndTherapistResponse({
      String? message, 
      int? code, 
      Data? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  SaveManagerAndTherapistResponse.fromJson(dynamic json) {
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

/// inHouseUserDetailId : 3
/// userId : "8c062e3a-2f29-4fcc-89be-23140c01fd89"
/// caseManagerId : 3
/// therapistId : 3

class Data {
  Data({
      int? inHouseUserDetailId, 
      String? userId, 
      int? caseManagerId, 
      int? therapistId,}){
    _inHouseUserDetailId = inHouseUserDetailId;
    _userId = userId;
    _caseManagerId = caseManagerId;
    _therapistId = therapistId;
}

  Data.fromJson(dynamic json) {
    _inHouseUserDetailId = json['inHouseUserDetailId'];
    _userId = json['userId'];
    _caseManagerId = json['caseManagerId'];
    _therapistId = json['therapistId'];
  }
  int? _inHouseUserDetailId;
  String? _userId;
  int? _caseManagerId;
  int? _therapistId;

  int? get inHouseUserDetailId => _inHouseUserDetailId;
  String? get userId => _userId;
  int? get caseManagerId => _caseManagerId;
  int? get therapistId => _therapistId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['inHouseUserDetailId'] = _inHouseUserDetailId;
    map['userId'] = _userId;
    map['caseManagerId'] = _caseManagerId;
    map['therapistId'] = _therapistId;
    return map;
  }

}