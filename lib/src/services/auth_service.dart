import 'package:dio/dio.dart';
import '../models/auth_request.dart';

class AuthService {
  final Dio _dio = Dio();
  String? _token;

  Future<String?> login(AuthRequest authRequest) async {
    try {
      Response response = await _dio.post(
        "https://apie11.btc.com.ve/api/v3/auth/login",
        data: authRequest.toJson(),
        options: Options(headers: {
          "Content-Type": "application/json",
          "Accept": "*/*"
        }),
      );

      if (response.statusCode == 200) {
        _token = response.data["access_token"];
        return _token;
      } else {
        throw Exception("Error en la autenticación");
      }
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }

  String? get token => _token;
}
