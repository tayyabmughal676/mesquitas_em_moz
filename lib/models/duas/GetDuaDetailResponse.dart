import 'dart:convert';
/// message : "Operation performed successfully"
/// code : 1
/// data : {"duaId":14,"duaTypeId":1,"name":"Al-Baqara , Ayah 283","detail":"اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْماً نَافِعاً، وَرِزْقاً طَيِّباً، وَعَمَلاً مُتَقَبَّلاً","translation":"O Allah, I ask You for knowledge that is of benefit , a good provision , and deeds that will be accepted."}

GetDuaDetailResponse getDuaDetailResponseFromJson(String str) => GetDuaDetailResponse.fromJson(json.decode(str));
String getDuaDetailResponseToJson(GetDuaDetailResponse data) => json.encode(data.toJson());
class GetDuaDetailResponse {
  GetDuaDetailResponse({
      String? message, 
      int? code, 
      Data? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  GetDuaDetailResponse.fromJson(dynamic json) {
    _message = json['message'];
    _code = json['code'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _message;
  int? _code;
  Data? _data;
GetDuaDetailResponse copyWith({  String? message,
  int? code,
  Data? data,
}) => GetDuaDetailResponse(  message: message ?? _message,
  code: code ?? _code,
  data: data ?? _data,
);
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

/// duaId : 14
/// duaTypeId : 1
/// name : "Al-Baqara , Ayah 283"
/// detail : "اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْماً نَافِعاً، وَرِزْقاً طَيِّباً، وَعَمَلاً مُتَقَبَّلاً"
/// translation : "O Allah, I ask You for knowledge that is of benefit , a good provision , and deeds that will be accepted."

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      int? duaId, 
      int? duaTypeId, 
      String? name, 
      String? detail, 
      String? translation,}){
    _duaId = duaId;
    _duaTypeId = duaTypeId;
    _name = name;
    _detail = detail;
    _translation = translation;
}

  Data.fromJson(dynamic json) {
    _duaId = json['duaId'];
    _duaTypeId = json['duaTypeId'];
    _name = json['name'];
    _detail = json['detail'];
    _translation = json['translation'];
  }
  int? _duaId;
  int? _duaTypeId;
  String? _name;
  String? _detail;
  String? _translation;
Data copyWith({  int? duaId,
  int? duaTypeId,
  String? name,
  String? detail,
  String? translation,
}) => Data(  duaId: duaId ?? _duaId,
  duaTypeId: duaTypeId ?? _duaTypeId,
  name: name ?? _name,
  detail: detail ?? _detail,
  translation: translation ?? _translation,
);
  int? get duaId => _duaId;
  int? get duaTypeId => _duaTypeId;
  String? get name => _name;
  String? get detail => _detail;
  String? get translation => _translation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['duaId'] = _duaId;
    map['duaTypeId'] = _duaTypeId;
    map['name'] = _name;
    map['detail'] = _detail;
    map['translation'] = _translation;
    return map;
  }

}