import 'dart:convert';

import 'package:http/http.dart';

class THttpHelper {
  static const String _baseUrl = "your_base_url";

  //Helper method to make a GET request
  static Future<Map<String, dynamic>> getData(String endpoint) async {
    final response =
        await get(Uri.parse(Uri.encodeFull('$_baseUrl/$endpoint')));
    return _handleResponse(response);
  }

  //Helper method to make a POST request
  static Future<Map<String, dynamic>> postData(
      String endpoint, dynamic data) async {
    final response = await post(Uri.parse('$_baseUrl/$endpoint'),
        headers: {'Content-Type': 'application/json'}, body: json.decode(data));
    return _handleResponse(response);
  }

  //Helper method to make a PUT request
  static Future<Map<String, dynamic>> putData(
      String endpoint, dynamic data) async {
    final response = await put(Uri.parse('$_baseUrl/$endpoint'),
        headers: {'Content-Type': 'application/json'}, body: json.decode(data));
    return _handleResponse(response);
  }

  //Helper method to make a DELETE request
  static Future<Map<String, dynamic>> deleteData(String endpoint) async {
    final response = await delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  //Handle Response
  static Map<String, dynamic> _handleResponse(Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Failed to load data: ${response.statusCode}");
    }
  }
}
