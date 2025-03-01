import 'package:akasdk/src/models/payment_request.dart';

void main() {
  // Crear una instancia de PaymentRequest
  var request = PaymentRequest(
    msgId: "12345",
    instgAgt: "NCCE",
    amount: 100.0,
  );

  // Convertir a JSON
  print("PaymentRequest como JSON: ${request.toJson()}");

  // Crear un JSON simulado
  var json = {
    "msgId": "12345",
    "instgAgt": "NCCE",
    "amount": 100.0
  };

  // Convertir JSON a objeto Dart
  var fromJsonRequest = PaymentRequest.fromJson(json);
  print("Objeto generado desde JSON: ${fromJsonRequest.msgId}");
}
