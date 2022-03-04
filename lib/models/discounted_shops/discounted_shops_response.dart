/// message : "Operation performed successfully"
/// code : 1
/// data : [{"shopId":7,"shopName":"Breakout","offerPercentage":"50%"},{"shopId":7,"shopName":"Breakout","offerPercentage":"30%"},{"shopId":6,"shopName":"Test Shop","offerPercentage":"50%"},{"shopId":6,"shopName":"Test Shop","offerPercentage":"30%"}]

class DiscountedShopsResponse {
  DiscountedShopsResponse({
      String? message, 
      int? code, 
      List<Data>? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  DiscountedShopsResponse.fromJson(dynamic json) {
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

/// shopId : 7
/// shopName : "Breakout"
/// offerPercentage : "50%"

class Data {
  Data({
      int? shopId, 
      String? shopName, 
      String? offerPercentage,}){
    _shopId = shopId;
    _shopName = shopName;
    _offerPercentage = offerPercentage;
}

  Data.fromJson(dynamic json) {
    _shopId = json['shopId'];
    _shopName = json['shopName'];
    _offerPercentage = json['offerPercentage'];
  }
  int? _shopId;
  String? _shopName;
  String? _offerPercentage;

  int? get shopId => _shopId;
  String? get shopName => _shopName;
  String? get offerPercentage => _offerPercentage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['shopId'] = _shopId;
    map['shopName'] = _shopName;
    map['offerPercentage'] = _offerPercentage;
    return map;
  }

}