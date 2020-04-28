import 'dart:convert';

import 'package:obj_json_coding/person.dart';

int calculate() {
  return 6 * 7;
}

void runner() {

  final list = ['123', '456', '789'];

  //map/list 转 jsonstring
  final jsonstr = json.encode(list);
  //jsonstring 转 map/list
  final jsonobj = json.decode(jsonstr);
  print(jsonobj.runtimeType);

  //data.json的map对象  jsonData
  //新建并赋值person对象
  final person = Person.fromJson(jsonData);
  print(person.dateOfBirth.millisecondsSinceEpoch);
  print(person.orders.length);
  print(person.extraInfo);
}

