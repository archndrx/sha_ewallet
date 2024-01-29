import 'dart:convert';

import 'package:e_wallet/models/sign_up_model.dart';
import 'package:e_wallet/models/user_model.dart';
import 'package:e_wallet/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<bool> checkEmail(String email) async {
    try {
      final res = await http.post(
        Uri.parse('$baseUrl/is-email-exist'),
        body: {
          'email': email,
        },
      );
      if (res.statusCode == 200) {
        return jsonDecode(res.body)['is_email_exist'];
      } else {
        return jsonDecode(res.body)['emails'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> register(SignUpModel data) async {
    try {
      final res = await http.post(
        Uri.parse(
          '$baseUrl/register',
        ),
        body: data.toJson(),
      );

      if (res.statusCode == 200) {
        UserModel user = UserModel.fromJson(
          jsonDecode(res.body),
        );
        user.copyWith(password: data.password);
        return user;
      } else {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
