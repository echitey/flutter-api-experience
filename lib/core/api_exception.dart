// We create a custom exception class to be able to throw custom exception
// class implements the basic Exception class
import 'package:api_experience/core/constants.dart';

class ApiException implements Exception {
  final String _errorType;
  final String _message;

  ApiException(this._errorType, this._message);

  @override
  String toString() {
    // returns formatted error message
    return "$_errorType: $_message";
  }
}

// Now we create specific error classes
class FetchDataException extends ApiException {
  FetchDataException({required String message})
      : super(Constants.fetchDataExceptionTitle, message);
}

class UnauthorizedRequestException extends ApiException {
  UnauthorizedRequestException({required String message})
      : super(Constants.unauthorizedExceptionTitle, message);
}

class BadRequestException extends ApiException {
  BadRequestException({required String message})
      : super(Constants.badRequestExceptionTitle, message);
}

class InvalidInputException extends ApiException {
  InvalidInputException({required String message})
      : super(Constants.invalidInputExceptionTitle, message);
}
