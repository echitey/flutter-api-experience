// Basic class to return the api response
// Responsible to "treat" the http response
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'api_exception.dart';

class ReturnHttpResponse {
  static dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 400:
        throw BadRequestException(message: response.body.toString());
      case 401:
      case 403:
        throw UnauthorizedRequestException(message: response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            message:
                "Error while communicating with server. Status code ${response.statusCode}");
    }
  }
}
