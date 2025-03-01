import 'package:json_annotation/json_annotation.dart';

part 'auth_request.g.dart';

@JsonSerializable()
class AuthRequest {
  final String client_id;
  final String secret;
  final String grant_type;
  final String scope;

  AuthRequest({
    required this.client_id,
    required this.secret,
    this.grant_type = "client_credentials",
    this.scope = "*",
  });

  factory AuthRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthRequestToJson(this);
}
