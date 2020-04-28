import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable(nullable: false)
class Person {
  final String firstName;
  final String lastName;
  final DateTime dateOfBirth;
  final List<Order> orders;
  final ExtraInfo extraInfo;
  Person({this.firstName, this.lastName, this.dateOfBirth, this.orders, this.extraInfo});
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}

@JsonSerializable(nullable: false)
class Order {
  final String orderId;
  final String orderName;

  Order(this.orderId, this.orderName);
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

@JsonSerializable()
class ExtraInfo {
  final int integer;
  final double numbers;
  final String message;

  ExtraInfo(this.integer, this.numbers, this.message);
  factory ExtraInfo.fromJson(Map<String, dynamic> json) => _$ExtraInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ExtraInfoToJson(this);
}


@JsonLiteral('data.json')
Map get jsonData => _$jsonDataJsonLiteral;