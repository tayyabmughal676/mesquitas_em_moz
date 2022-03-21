/// message : "Operation performed successfully"
/// code : 1
/// data : {"mosqueId":3,"name":"Aqsa Mosque","filePath":"","fajr":"05:00:00","nascerDoSol":"02:00:00","zuhr":"13:00:00","asr":"16:00:00","maghrib":"19:00:00","isha":"20:00:00","events":[{"eventId":4,"name":"Shab e Baraat","filePath":""},{"eventId":8,"name":"Mehfil e Naat","filePath":""}]}

class GetMasjidDetailResponse {
  GetMasjidDetailResponse({
    String? message,
    int? code,
    Data? data,
  }) {
    _message = message;
    _code = code;
    _data = data;
  }

  GetMasjidDetailResponse.fromJson(dynamic json) {
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

/// mosqueId : 3
/// name : "Aqsa Mosque"
/// filePath : ""
/// fajr : "05:00:00"
/// nascerDoSol : "02:00:00"
/// zuhr : "13:00:00"
/// asr : "16:00:00"
/// maghrib : "19:00:00"
/// isha : "20:00:00"
/// events : [{"eventId":4,"name":"Shab e Baraat","filePath":""},{"eventId":8,"name":"Mehfil e Naat","filePath":""}]

class Data {
  Data({
    int? mosqueId,
    String? name,
    String? filePath,
    String? fajr,
    String? nascerDoSol,
    String? zuhr,
    String? asr,
    String? maghrib,
    String? isha,
    List<Events>? events,
  }) {
    _mosqueId = mosqueId;
    _name = name;
    _filePath = filePath;
    _fajr = fajr;
    _nascerDoSol = nascerDoSol;
    _zuhr = zuhr;
    _asr = asr;
    _maghrib = maghrib;
    _isha = isha;
    _events = events;
  }

  Data.fromJson(dynamic json) {
    _mosqueId = json['mosqueId'];
    _name = json['name'];
    _filePath = json['filePath'];
    _fajr = json['fajr'];
    _nascerDoSol = json['nascerDoSol'];
    _zuhr = json['zuhr'];
    _asr = json['asr'];
    _maghrib = json['maghrib'];
    _isha = json['isha'];
    if (json['events'] != null) {
      _events = [];
      json['events'].forEach((v) {
        _events?.add(Events.fromJson(v));
      });
    }
  }

  int? _mosqueId;
  String? _name;
  String? _filePath;
  String? _fajr;
  String? _nascerDoSol;
  String? _zuhr;
  String? _asr;
  String? _maghrib;
  String? _isha;
  List<Events>? _events;

  int? get mosqueId => _mosqueId;

  String? get name => _name;

  String? get filePath => _filePath;

  String? get fajr => _fajr;

  String? get nascerDoSol => _nascerDoSol;

  String? get zuhr => _zuhr;

  String? get asr => _asr;

  String? get maghrib => _maghrib;

  String? get isha => _isha;

  List<Events>? get events => _events;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mosqueId'] = _mosqueId;
    map['name'] = _name;
    map['filePath'] = _filePath;
    map['fajr'] = _fajr;
    map['nascerDoSol'] = _nascerDoSol;
    map['zuhr'] = _zuhr;
    map['asr'] = _asr;
    map['maghrib'] = _maghrib;
    map['isha'] = _isha;
    if (_events != null) {
      map['events'] = _events?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// eventId : 4
/// name : "Shab e Baraat"
/// filePath : ""

class Events {
  Events({
    int? eventId,
    String? name,
    String? filePath,
  }) {
    _eventId = eventId;
    _name = name;
    _filePath = filePath;
  }

  Events.fromJson(dynamic json) {
    _eventId = json['eventId'];
    _name = json['name'];
    _filePath = json['filePath'];
  }

  int? _eventId;
  String? _name;
  String? _filePath;

  int? get eventId => _eventId;

  String? get name => _name;

  String? get filePath => _filePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['eventId'] = _eventId;
    map['name'] = _name;
    map['filePath'] = _filePath;
    return map;
  }
}
