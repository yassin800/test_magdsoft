// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRsponseModel _$RegisterRsponseModelFromJson(
        Map<String, dynamic> json) =>
    RegisterRsponseModel(
      json['status'] as int,
      json['message'] as String,
    );

Map<String, dynamic> _$RegisterRsponseModelToJson(
        RegisterRsponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
