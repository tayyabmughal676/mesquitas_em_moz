/// message : "Operation performed successfully"
/// code : 1
/// data : [{"noteId":2,"userId":"e7edcdc4-d52c-4be8-8621-a8951b6a7696","title":"this is title","description":"This is my new integration"}]

class GetAllNotesResponse {
  GetAllNotesResponse({
      String? message, 
      int? code, 
      List<Data>? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  GetAllNotesResponse.fromJson(dynamic json) {
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

/// noteId : 2
/// userId : "e7edcdc4-d52c-4be8-8621-a8951b6a7696"
/// title : "this is title"
/// description : "This is my new integration"

class Data {
  Data({
      int? noteId, 
      String? userId, 
      String? title, 
      String? description,}){
    _noteId = noteId;
    _userId = userId;
    _title = title;
    _description = description;
}

  Data.fromJson(dynamic json) {
    _noteId = json['noteId'];
    _userId = json['userId'];
    _title = json['title'];
    _description = json['description'];
  }
  int? _noteId;
  String? _userId;
  String? _title;
  String? _description;

  int? get noteId => _noteId;
  String? get userId => _userId;
  String? get title => _title;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['noteId'] = _noteId;
    map['userId'] = _userId;
    map['title'] = _title;
    map['description'] = _description;
    return map;
  }

}