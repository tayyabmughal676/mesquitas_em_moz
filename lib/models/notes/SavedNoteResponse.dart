/// message : "Operation performed successfully"
/// code : 1
/// data : {"noteId":17,"userId":"e7edcdc4-d52c-4be8-8621-a8951b6a7696","title":"this is title","description":"This is my new integration"}

class SavedNoteResponse {
  SavedNoteResponse({
      String? message, 
      int? code, 
      Data? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  SavedNoteResponse.fromJson(dynamic json) {
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

/// noteId : 17
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