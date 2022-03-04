/// message : "Operation performed successfully"
/// code : 1
/// data : [{"DayNumber":1,"Description":"new Desc"},{"DayNumber":2,"Description":"new Desc 2"}]

class GetLessonHistoryResponse {
  GetLessonHistoryResponse({
      String? message, 
      int? code, 
      List<Data>? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  GetLessonHistoryResponse.fromJson(dynamic json) {
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

/// DayNumber : 1
/// Description : "new Desc"

class Data {
  Data({
      int? dayNumber, 
      String? description,}){
    _dayNumber = dayNumber;
    _description = description;
}

  Data.fromJson(dynamic json) {
    _dayNumber = json['DayNumber'];
    _description = json['Description'];
  }
  int? _dayNumber;
  String? _description;

  int? get dayNumber => _dayNumber;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['DayNumber'] = _dayNumber;
    map['Description'] = _description;
    return map;
  }

}