import 'services/auth_service.dart';
import 'services/btcbox_service.dart';
import 'models/auth_request.dart';
import 'models/payment_request.dart';

class BTCBOX {
  final AuthService _authService = AuthService();
  final BTCBoxService _btcBoxService = BTCBoxService();
  String? _token;

  Future<void> login(String clientId, String secret) async {
    _token = await _authService.login(AuthRequest(client_id: clientId, secret: secret));
  }

  Future<Map<String, dynamic>> processPayment(double amount) async {
    if (_token == null) throw Exception("Autenticación requerida");

    PaymentRequest request = PaymentRequest(
      msgId: "12345",
      instgAgt: "NCCE",
      amount: amount,
    );

    return await _btcBoxService.makePayment(request);
  }
}
