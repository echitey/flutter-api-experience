// specific service class for user resource
import 'dart:io';

import 'package:api_experience/core/api_exception.dart';
import 'package:api_experience/core/return_http_response.dart';
import 'package:api_experience/services/base_service.dart';
import 'package:http/http.dart' as http;

class UserService implements BaseService {
  @override
  Future fetchData(String url) async {
    dynamic jsonResponse;
    try {
      final uri = Uri.parse(url);
      final response = await http.get(uri);
      jsonResponse = ReturnHttpResponse.returnResponse(response);
    } on SocketException {
      throw FetchDataException(message: "No Internet Connection");
    }
    return jsonResponse;
  }
}
