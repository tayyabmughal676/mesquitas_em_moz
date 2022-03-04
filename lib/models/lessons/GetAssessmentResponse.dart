/// message : "Operation performed successfully"
/// code : 1
/// data : [{"lessonAssessmentQuestionId":1,"question":"this is question one","option1":"phli","option2":"dusri","option3":"tesri","option4":"chowthi","answers":"2,3"},{"lessonAssessmentQuestionId":2,"question":"this is question two","option1":"first","option2":"second","option3":"third","option4":"fourth","answers":"1,3"}]

class GetAssessmentResponse {
  GetAssessmentResponse({
      String? message, 
      int? code, 
      List<Data>? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  GetAssessmentResponse.fromJson(dynamic json) {
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

/// lessonAssessmentQuestionId : 1
/// question : "this is question one"
/// option1 : "phli"
/// option2 : "dusri"
/// option3 : "tesri"
/// option4 : "chowthi"
/// answers : "2,3"

class Data {
  Data({
      int? lessonAssessmentQuestionId, 
      String? question, 
      String? option1, 
      String? option2, 
      String? option3, 
      String? option4, 
      String? answers,}){
    _lessonAssessmentQuestionId = lessonAssessmentQuestionId;
    _question = question;
    _option1 = option1;
    _option2 = option2;
    _option3 = option3;
    _option4 = option4;
    _answers = answers;
}

  Data.fromJson(dynamic json) {
    _lessonAssessmentQuestionId = json['lessonAssessmentQuestionId'];
    _question = json['question'];
    _option1 = json['option1'];
    _option2 = json['option2'];
    _option3 = json['option3'];
    _option4 = json['option4'];
    _answers = json['answers'];
  }
  int? _lessonAssessmentQuestionId;
  String? _question;
  String? _option1;
  String? _option2;
  String? _option3;
  String? _option4;
  String? _answers;

  int? get lessonAssessmentQuestionId => _lessonAssessmentQuestionId;
  String? get question => _question;
  String? get option1 => _option1;
  String? get option2 => _option2;
  String? get option3 => _option3;
  String? get option4 => _option4;
  String? get answers => _answers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lessonAssessmentQuestionId'] = _lessonAssessmentQuestionId;
    map['question'] = _question;
    map['option1'] = _option1;
    map['option2'] = _option2;
    map['option3'] = _option3;
    map['option4'] = _option4;
    map['answers'] = _answers;
    return map;
  }

}