part of openapi.api;

class User {
  
  String id = null;
  
  String email = null;
  
  String cardId = null;
  
  double balance = null;
  
  String pinCode = null;
  User();

  @override
  String toString() {
    return 'User[id=$id, email=$email, cardId=$cardId, balance=$balance, pinCode=$pinCode, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    email = json['email'];
    cardId = json['cardId'];
    balance = (json['balance'] == null) ?
      null :
      json['balance'].toDouble();
    pinCode = json['pinCode'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (email != null)
      json['email'] = email;
    if (cardId != null)
      json['cardId'] = cardId;
    if (balance != null)
      json['balance'] = balance;
    if (pinCode != null)
      json['pinCode'] = pinCode;
    return json;
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? List<User>() : json.map((value) => User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, User>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<User>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = User.listFromJson(value);
       });
     }
     return map;
  }
}

