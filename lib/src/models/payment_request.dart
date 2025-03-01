import 'package:json_annotation/json_annotation.dart';

part 'payment_request.g.dart'; // Asegúrate de que esta línea está presente

@JsonSerializable()
class PaymentRequest {
  final String msgId;
  final String instgAgt; // Corregido de 'instg' a 'instgAgt'
  final double amount;

  PaymentRequest({
    required this.msgId,
    required this.instgAgt,
    required this.amount,
  });

  factory PaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentRequestToJson(this);
}
