import 'package:dio/dio.dart';
import '../models/payment_request.dart';

class BTCBoxService {
  final Dio _dio = Dio();
  final String baseUrl = "https://box.btc.com.ve:3009/coremfibp/api/v1/json/";

  Future<Map<String, dynamic>> makePayment(PaymentRequest request) async {
    try {
      Response response = await _dio.post(
        "${baseUrl}bcoemi/enviar/request/otp",
        data: request.toJson(),
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer YOUR_TOKEN"
        }),
      );

      return response.data;
    } catch (e) {
      throw Exception("Error en el pago: $e");
    }
  }
}
