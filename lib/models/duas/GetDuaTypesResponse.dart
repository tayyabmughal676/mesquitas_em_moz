/// message : "Operation performed successfully"
/// code : 1
/// data : [{"duaTypeId":1,"name":"Duas depois da oração","filePath":"null"},{"duaTypeId":2,"name":"Adhkar Da Manha","filePath":"null"},{"duaTypeId":3,"name":"Adhkar Da Noite","filePath":"null"},{"duaTypeId":4,"name":"Duas diários","filePath":"null"},{"duaTypeId":5,"name":"40 Duas de Rabbana","filePath":"null"}]

class GetDuaTypesResponse {
  GetDuaTypesResponse({
    String? message,
    int? code,
    List<Data>? data,
  }) {
    _message = message;
    _code = code;
    _data = data;
  }

  GetDuaTypesResponse.fromJson(dynamic json) {
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

  GetDuaTypesResponse copyWith({
    String? message,
    int? code,
    List<Data>? data,
  }) =>
      GetDuaTypesResponse(
        message: message ?? _message,
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

/// duaTypeId : 1
/// name : "Duas depois da oração"
/// filePath : "null"

class Data {
  Data({
    int? duaTypeId,
    String? name,
    String? filePath,
  }) {
    _duaTypeId = duaTypeId;
    _name = name;
    _filePath = filePath;
  }

  Data.fromJson(dynamic json) {
    _duaTypeId = json['duaTypeId'];
    _name = json['name'];
    _filePath = json['filePath'];
  }

  int? _duaTypeId;
  String? _name;
  String? _filePath;

  Data copyWith({
    int? duaTypeId,
    String? name,
    String? filePath,
  }) =>
      Data(
        duaTypeId: duaTypeId ?? _duaTypeId,
        name: name ?? _name,
        filePath: filePath ?? _filePath,
      );

  int? get duaTypeId => _duaTypeId;

  String? get name => _name;

  String? get filePath => _filePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['duaTypeId'] = _duaTypeId;
    map['name'] = _name;
    map['filePath'] = _filePath;
    return map;
  }
}
