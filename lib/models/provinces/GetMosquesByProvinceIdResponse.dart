import 'dart:convert';
/// message : "Operation performed successfully"
/// code : 1
/// data : [{"mosqueId":29,"name":"Sheikh Zayed Grand Mosque","filePath":"https://mesquitasapi.jinnbytedev.com/Files/Mosque/800px-Sheikh_Zayed_Mosque_view.jpg"},{"mosqueId":28,"name":"Blue Mosque","filePath":"https://mesquitasapi.jinnbytedev.com/Files/Mosque/blue mosque.jpg"},{"mosqueId":27,"name":"Badshahi Mosque","filePath":""}]

GetMosquesByProvinceIdResponse getMosquesByProvinceIdResponseFromJson(String str) => GetMosquesByProvinceIdResponse.fromJson(json.decode(str));
String getMosquesByProvinceIdResponseToJson(GetMosquesByProvinceIdResponse data) => json.encode(data.toJson());
class GetMosquesByProvinceIdResponse {
  GetMosquesByProvinceIdResponse({
      String? message, 
      int? code, 
      List<Data>? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  GetMosquesByProvinceIdResponse.fromJson(dynamic json) {
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
GetMosquesByProvinceIdResponse copyWith({  String? message,
  int? code,
  List<Data>? data,
}) => GetMosquesByProvinceIdResponse(  message: message ?? _message,
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

/// mosqueId : 29
/// name : "Sheikh Zayed Grand Mosque"
/// filePath : "https://mesquitasapi.jinnbytedev.com/Files/Mosque/800px-Sheikh_Zayed_Mosque_view.jpg"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      int? mosqueId, 
      String? name, 
      String? filePath,}){
    _mosqueId = mosqueId;
    _name = name;
    _filePath = filePath;
}

  Data.fromJson(dynamic json) {
    _mosqueId = json['mosqueId'];
    _name = json['name'];
    _filePath = json['filePath'];
  }
  int? _mosqueId;
  String? _name;
  String? _filePath;
Data copyWith({  int? mosqueId,
  String? name,
  String? filePath,
}) => Data(  mosqueId: mosqueId ?? _mosqueId,
  name: name ?? _name,
  filePath: filePath ?? _filePath,
);
  int? get mosqueId => _mosqueId;
  String? get name => _name;
  String? get filePath => _filePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mosqueId'] = _mosqueId;
    map['name'] = _name;
    map['filePath'] = _filePath;
    return map;
  }

}