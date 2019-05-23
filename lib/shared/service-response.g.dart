// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service-response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceResponse _$ServiceResponseFromJson(Map<String, dynamic> json) {
  return ServiceResponse(json['succeeded'] as bool, json['message'] as String);
}

Map<String, dynamic> _$ServiceResponseToJson(ServiceResponse instance) =>
    <String, dynamic>{
      'succeeded': instance.succeeded,
      'message': instance.message
    };
