part of openapi.api;

class Machine {
  
  String id = null;
  
  double cost = null;
  
  String type = null;
  //enum typeEnum {  Dryer,  WashingMachine,  };{
  
  int programDurationInMinutes = null;
  
  DateTime lastStartTime = null;
  
  DateTime lastHoldingStartTime = null;
  
  String lastHoldingUserId = null;
  Machine();

  @override
  String toString() {
    return 'Machine[id=$id, cost=$cost, type=$type, programDurationInMinutes=$programDurationInMinutes, lastStartTime=$lastStartTime, lastHoldingStartTime=$lastHoldingStartTime, lastHoldingUserId=$lastHoldingUserId, ]';
  }

  Machine.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    cost = (json['cost'] == null) ?
      null :
      json['cost'].toDouble();
    type = json['type'];
    programDurationInMinutes = json['programDurationInMinutes'];
    lastStartTime = (json['lastStartTime'] == null) ?
      null :
      DateTime.parse(json['lastStartTime']);
    lastHoldingStartTime = (json['lastHoldingStartTime'] == null) ?
      null :
      DateTime.parse(json['lastHoldingStartTime']);
    lastHoldingUserId = json['lastHoldingUserId'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (cost != null)
      json['cost'] = cost;
    if (type != null)
      json['type'] = type;
    if (programDurationInMinutes != null)
      json['programDurationInMinutes'] = programDurationInMinutes;
    if (lastStartTime != null)
      json['lastStartTime'] = lastStartTime == null ? null : lastStartTime.toUtc().toIso8601String();
    if (lastHoldingStartTime != null)
      json['lastHoldingStartTime'] = lastHoldingStartTime == null ? null : lastHoldingStartTime.toUtc().toIso8601String();
    if (lastHoldingUserId != null)
      json['lastHoldingUserId'] = lastHoldingUserId;
    return json;
  }

  static List<Machine> listFromJson(List<dynamic> json) {
    return json == null ? List<Machine>() : json.map((value) => Machine.fromJson(value)).toList();
  }

  static Map<String, Machine> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Machine>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Machine.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Machine-objects as value to a dart map
  static Map<String, List<Machine>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Machine>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Machine.listFromJson(value);
       });
     }
     return map;
  }
}

