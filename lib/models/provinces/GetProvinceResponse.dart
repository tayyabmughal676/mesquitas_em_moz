/// message : "Operation performed successfully"
/// code : 1
/// data : [{"provinceId":1,"name":"Cabo Delgado"},{"provinceId":2,"name":"Gaza"},{"provinceId":3,"name":"Inhambane"},{"provinceId":4,"name":"Manica"},{"provinceId":5,"name":"Maputo City"},{"provinceId":6,"name":"Maputo"},{"provinceId":7,"name":"Nampula"},{"provinceId":8,"name":"Niassa"},{"provinceId":9,"name":"Sofala"},{"provinceId":10,"name":"Tete"},{"provinceId":11,"name":"Zambezia"}]

class GetProvinceResponse {
  GetProvinceResponse({
      String? message, 
      int? code, 
      List<Data>? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  GetProvinceResponse.fromJson(dynamic json) {
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

/// provinceId : 1
/// name : "Cabo Delgado"

class Data {
  Data({
      int? provinceId, 
      String? name,}){
    _provinceId = provinceId;
    _name = name;
}

  Data.fromJson(dynamic json) {
    _provinceId = json['provinceId'];
    _name = json['name'];
  }
  int? _provinceId;
  String? _name;

  int? get provinceId => _provinceId;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['provinceId'] = _provinceId;
    map['name'] = _name;
    return map;
  }

}