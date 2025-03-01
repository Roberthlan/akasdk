// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthRequest _$AuthRequestFromJson(Map<String, dynamic> json) => AuthRequest(
      client_id: json['client_id'] as String,
      secret: json['secret'] as String,
      grant_type: json['grant_type'] as String? ?? "client_credentials",
      scope: json['scope'] as String? ?? "*",
    );

Map<String, dynamic> _$AuthRequestToJson(AuthRequest instance) =>
    <String, dynamic>{
      'client_id': instance.client_id,
      'secret': instance.secret,
      'grant_type': instance.grant_type,
      'scope': instance.scope,
    };
