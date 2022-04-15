import 'dart:convert';
/// message : "Operation performed successfully"
/// code : 1
/// data : [{"duaId":14,"name":"Al-Baqara , Ayah 283"},{"duaId":13,"name":"Al-Baqara , Ayah 283"},{"duaId":12,"name":"Al-Baqara , Ayah 283"},{"duaId":11,"name":"Al-Baqara , Ayah 283"},{"duaId":10,"name":"Al-Baqara , Ayah 283"},{"duaId":9,"name":"Al-Baqara , Ayah 283"},{"duaId":8,"name":"Al-Baqara , Ayah 283"},{"duaId":7,"name":"Al-Baqara , Ayah 283"},{"duaId":6,"name":"Al-Baqara , Ayah 283"},{"duaId":5,"name":"Al-Baqara , Ayah 283"},{"duaId":2,"name":"Al-Baqara , Ayah 283"}]

GetDuasByDuaTypeIdResponse getDuasByDuaTypeIdResponseFromJson(String str) => GetDuasByDuaTypeIdResponse.fromJson(json.decode(str));
String getDuasByDuaTypeIdResponseToJson(GetDuasByDuaTypeIdResponse data) => json.encode(data.toJson());
class GetDuasByDuaTypeIdResponse {
  GetDuasByDuaTypeIdResponse({
      String? message, 
      int? code, 
      List<Data>? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  GetDuasByDuaTypeIdResponse.fromJson(dynamic json) {
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
GetDuasByDuaTypeIdResponse copyWith({  String? message,
  int? code,
  List<Data>? data,
}) => GetDuasByDuaTypeIdResponse(  message: message ?? _message,
  code: code ?? _code,
  data: data ?? _data,
);
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

/// duaId : 14
/// name : "Al-Baqara , Ayah 283"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      int? duaId, 
      String? name,}){
    _duaId = duaId;
    _name = name;
}

  Data.fromJson(dynamic json) {
    _duaId = json['duaId'];
    _name = json['name'];
  }
  int? _duaId;
  String? _name;
Data copyWith({  int? duaId,
  String? name,
}) => Data(  duaId: duaId ?? _duaId,
  name: name ?? _name,
);
  int? get duaId => _duaId;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['duaId'] = _duaId;
    map['name'] = _name;
    return map;
  }

}