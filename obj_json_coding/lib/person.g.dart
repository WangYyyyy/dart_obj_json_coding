// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
    orders: (json['orders'] as List)
        .map((e) => Order.fromJson(e as Map<String, dynamic>))
        .toList(),
    extraInfo: ExtraInfo.fromJson(json['extraInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'orders': instance.orders,
      'extraInfo': instance.extraInfo,
    };

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    json['orderId'] as String,
    json['orderName'] as String,
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'orderId': instance.orderId,
      'orderName': instance.orderName,
    };

ExtraInfo _$ExtraInfoFromJson(Map<String, dynamic> json) {
  return ExtraInfo(
    json['integer'] as int,
    (json['numbers'] as num)?.toDouble(),
    json['message'] as String,
  );
}

Map<String, dynamic> _$ExtraInfoToJson(ExtraInfo instance) => <String, dynamic>{
      'integer': instance.integer,
      'numbers': instance.numbers,
      'message': instance.message,
    };

// **************************************************************************
// JsonLiteralGenerator
// **************************************************************************

final _$jsonDataJsonLiteral = {
  'firstName': 'wang',
  'lastName': 'yu',
  'dateOfBirth': '2020-11-11 12:22:45',
  'orders': [
    {'orderId': 'ID123', 'orderName': 'name_wieiee'},
    {'orderId': 'ID456', 'orderName': 'name_asasas'},
    {'orderId': 'ID789', 'orderName': 'name_zxzxzx'}
  ],
  'extraInfo': {'integer': 1, 'numbers': 5.32, 'message': 'example glossary'}
};
