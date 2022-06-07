import 'package:magdsoft_flutter_structure/data/models/loginresponsemodel.dart';
import 'package:magdsoft_flutter_structure/data/remote/dio_helper.dart';
import 'package:dio/dio.dart';

class LoginRequest {
  Future<Loginresponsemodel> login(String email, String password) async {
    var formData = FormData.fromMap({
      'email': email,
      'password': password,
    });
    final response =
        await DioHelper.postFormData(url: '/api/login', body: formData);
    return Loginresponsemodel.fromJson(response.data);
  }
}
