// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginresponsemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Loginresponsemodel _$LoginresponsemodelFromJson(Map<String, dynamic> json) =>
    Loginresponsemodel(
      (json['account'] as List<dynamic>?)
          ?.map((e) => Usermodel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as int,
      json['message'] as String?,
    );

Map<String, dynamic> _$LoginresponsemodelToJson(Loginresponsemodel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'account': instance.account,
      'message': instance.message,
    };
