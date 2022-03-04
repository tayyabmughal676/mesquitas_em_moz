/// message : "Operation performed successfully"
/// code : 1
/// data : {"soberCounter":0,"lessonId":3,"dayNumber":1,"videoPath":"https://pacificshores.jinnbytedev.com/UploadedFiles/LessonFiles/01022022020752.mp4","videoThumbnail":"https://pacificshores.jinnbytedev.com/UploadedFiles/LessonFiles/01022022020833.png","videoTitle":"How to do yoga!","duration":"00:00:42","lessonDescription":"This is lesson description"}

class GetMyProgramResponse {
  GetMyProgramResponse({
      String? message, 
      int? code, 
      Data? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  GetMyProgramResponse.fromJson(dynamic json) {
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

/// soberCounter : 0
/// lessonId : 3
/// dayNumber : 1
/// videoPath : "https://pacificshores.jinnbytedev.com/UploadedFiles/LessonFiles/01022022020752.mp4"
/// videoThumbnail : "https://pacificshores.jinnbytedev.com/UploadedFiles/LessonFiles/01022022020833.png"
/// videoTitle : "How to do yoga!"
/// duration : "00:00:42"
/// lessonDescription : "This is lesson description"

class Data {
  Data({
      int? soberCounter, 
      int? lessonId, 
      int? dayNumber, 
      String? videoPath, 
      String? videoThumbnail, 
      String? videoTitle, 
      String? duration, 
      String? lessonDescription,}){
    _soberCounter = soberCounter;
    _lessonId = lessonId;
    _dayNumber = dayNumber;
    _videoPath = videoPath;
    _videoThumbnail = videoThumbnail;
    _videoTitle = videoTitle;
    _duration = duration;
    _lessonDescription = lessonDescription;
}

  Data.fromJson(dynamic json) {
    _soberCounter = json['soberCounter'];
    _lessonId = json['lessonId'];
    _dayNumber = json['dayNumber'];
    _videoPath = json['videoPath'];
    _videoThumbnail = json['videoThumbnail'];
    _videoTitle = json['videoTitle'];
    _duration = json['duration'];
    _lessonDescription = json['lessonDescription'];
  }
  int? _soberCounter;
  int? _lessonId;
  int? _dayNumber;
  String? _videoPath;
  String? _videoThumbnail;
  String? _videoTitle;
  String? _duration;
  String? _lessonDescription;

  int? get soberCounter => _soberCounter;
  int? get lessonId => _lessonId;
  int? get dayNumber => _dayNumber;
  String? get videoPath => _videoPath;
  String? get videoThumbnail => _videoThumbnail;
  String? get videoTitle => _videoTitle;
  String? get duration => _duration;
  String? get lessonDescription => _lessonDescription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['soberCounter'] = _soberCounter;
    map['lessonId'] = _lessonId;
    map['dayNumber'] = _dayNumber;
    map['videoPath'] = _videoPath;
    map['videoThumbnail'] = _videoThumbnail;
    map['videoTitle'] = _videoTitle;
    map['duration'] = _duration;
    map['lessonDescription'] = _lessonDescription;
    return map;
  }

}