/// message : "Operation performed successfully"
/// code : 1
/// data : {"token":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoidGhvcjFAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiT25saW5lIiwiZXhwIjoxNjQzNzA4NzUyLCJpc3MiOiJQYWNpZmljU2hvcmVzQVBJIn0.U0O5BUTmnqjsSU0xO9pAO7iXsqOfDU49sS_cNEcHxUw","expiration":"2022-02-01T09:45:52Z"},"user":{"id":"0620fc3a-ab35-4170-a0b2-9ef7c6c457d1","profilePicture":"https://pacificshores.jinnbytedev.com/UploadedFiles/ProfilePics/user.jpg","paymentStateTitle":"Unpaid","createdOn":"2022-02-01T03:30:52.5839592","fullName":"Tayyab Mughal","phoneNumber":"+923318628268","deviceId":"1231298sda123jkh","soberDate":"2022-01-31T08:46:00.472","email":"thor1@gmail.com","password":"123Qw#"}}

class SignUpResponse {
  SignUpResponse({
      String? message, 
      int? code, 
      Data? data,}){
    _message = message;
    _code = code;
    _data = data;
}

  SignUpResponse.fromJson(dynamic json) {
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

/// token : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoidGhvcjFAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiT25saW5lIiwiZXhwIjoxNjQzNzA4NzUyLCJpc3MiOiJQYWNpZmljU2hvcmVzQVBJIn0.U0O5BUTmnqjsSU0xO9pAO7iXsqOfDU49sS_cNEcHxUw","expiration":"2022-02-01T09:45:52Z"}
/// user : {"id":"0620fc3a-ab35-4170-a0b2-9ef7c6c457d1","profilePicture":"https://pacificshores.jinnbytedev.com/UploadedFiles/ProfilePics/user.jpg","paymentStateTitle":"Unpaid","createdOn":"2022-02-01T03:30:52.5839592","fullName":"Tayyab Mughal","phoneNumber":"+923318628268","deviceId":"1231298sda123jkh","soberDate":"2022-01-31T08:46:00.472","email":"thor1@gmail.com","password":"123Qw#"}

class Data {
  Data({
      Token? token, 
      User? user,}){
    _token = token;
    _user = user;
}

  Data.fromJson(dynamic json) {
    _token = json['token'] != null ? Token.fromJson(json['token']) : null;
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  Token? _token;
  User? _user;

  Token? get token => _token;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_token != null) {
      map['token'] = _token?.toJson();
    }
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// id : "0620fc3a-ab35-4170-a0b2-9ef7c6c457d1"
/// profilePicture : "https://pacificshores.jinnbytedev.com/UploadedFiles/ProfilePics/user.jpg"
/// paymentStateTitle : "Unpaid"
/// createdOn : "2022-02-01T03:30:52.5839592"
/// fullName : "Tayyab Mughal"
/// phoneNumber : "+923318628268"
/// deviceId : "1231298sda123jkh"
/// soberDate : "2022-01-31T08:46:00.472"
/// email : "thor1@gmail.com"
/// password : "123Qw#"

class User {
  User({
      String? id, 
      String? profilePicture, 
      String? paymentStateTitle, 
      String? createdOn, 
      String? fullName, 
      String? phoneNumber, 
      String? deviceId, 
      String? soberDate, 
      String? email, 
      String? password,}){
    _id = id;
    _profilePicture = profilePicture;
    _paymentStateTitle = paymentStateTitle;
    _createdOn = createdOn;
    _fullName = fullName;
    _phoneNumber = phoneNumber;
    _deviceId = deviceId;
    _soberDate = soberDate;
    _email = email;
    _password = password;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _profilePicture = json['profilePicture'];
    _paymentStateTitle = json['paymentStateTitle'];
    _createdOn = json['createdOn'];
    _fullName = json['fullName'];
    _phoneNumber = json['phoneNumber'];
    _deviceId = json['deviceId'];
    _soberDate = json['soberDate'];
    _email = json['email'];
    _password = json['password'];
  }
  String? _id;
  String? _profilePicture;
  String? _paymentStateTitle;
  String? _createdOn;
  String? _fullName;
  String? _phoneNumber;
  String? _deviceId;
  String? _soberDate;
  String? _email;
  String? _password;

  String? get id => _id;
  String? get profilePicture => _profilePicture;
  String? get paymentStateTitle => _paymentStateTitle;
  String? get createdOn => _createdOn;
  String? get fullName => _fullName;
  String? get phoneNumber => _phoneNumber;
  String? get deviceId => _deviceId;
  String? get soberDate => _soberDate;
  String? get email => _email;
  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['profilePicture'] = _profilePicture;
    map['paymentStateTitle'] = _paymentStateTitle;
    map['createdOn'] = _createdOn;
    map['fullName'] = _fullName;
    map['phoneNumber'] = _phoneNumber;
    map['deviceId'] = _deviceId;
    map['soberDate'] = _soberDate;
    map['email'] = _email;
    map['password'] = _password;
    return map;
  }

}

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoidGhvcjFAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiT25saW5lIiwiZXhwIjoxNjQzNzA4NzUyLCJpc3MiOiJQYWNpZmljU2hvcmVzQVBJIn0.U0O5BUTmnqjsSU0xO9pAO7iXsqOfDU49sS_cNEcHxUw"
/// expiration : "2022-02-01T09:45:52Z"

class Token {
  Token({
      String? token, 
      String? expiration,}){
    _token = token;
    _expiration = expiration;
}

  Token.fromJson(dynamic json) {
    _token = json['token'];
    _expiration = json['expiration'];
  }
  String? _token;
  String? _expiration;

  String? get token => _token;
  String? get expiration => _expiration;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['expiration'] = _expiration;
    return map;
  }

}