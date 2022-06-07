  import 'package:dio/dio.dart';
import 'package:magdsoft_flutter_structure/data/models/register_response.dart';

import '../../remote/dio_helper.dart';

class RegisterRequest {
  Future<RegisterRsponseModel> register(String name,String email, String password,String phone) async {
    var formData = FormData.fromMap({
      'name':name,
      'email': email,
      'password': password,
      'phone':phone
    });
    final response =
        await DioHelper.postFormData(url: '/api/register', body: formData);
    return RegisterRsponseModel.fromJson(response.data);
  }
}
