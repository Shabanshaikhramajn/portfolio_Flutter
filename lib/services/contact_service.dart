import 'dart:convert';

import 'package:http/http.dart' as http;

class ContactService {

  Future<bool> sendMessage(String name, String email, String message, String endPoint) async {
    final res = await http.post(Uri.parse(endPoint), body: jsonEncode({
      'name': name,
      'email': email,
      'message': message
    }),
     headers: {
      'Content-Type': 'application/json'
     }
    );

    return res.statusCode == 200|| res.statusCode ==201;
  }
}