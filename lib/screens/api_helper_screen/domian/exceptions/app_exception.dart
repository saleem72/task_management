//

class AppException implements Exception {
  final String? _message;
  final String? _prefix;

  AppException({String? message, String? prefix})
      : _message = message,
        _prefix = prefix;

  @override
  String toString() {
    return "${_prefix ?? ''}${_message ?? ''}";
  }
}

class FetchDataException extends AppException {
  FetchDataException([message])
      : super(message: message, prefix: "Error During Communication: ");
}

class BadRequestException extends AppException {
  BadRequestException([message])
      : super(message: message, prefix: "Invalid Request: ");
}

class ConnectionException extends AppException {
  ConnectionException([message])
      : super(message: message, prefix: "Connection Error: ");
}

class UnauthorisedException extends AppException {
  UnauthorisedException([message])
      : super(message: message, prefix: "Unauthorised: ");
}

class InvalidInputException extends AppException {
  InvalidInputException([message])
      : super(message: message, prefix: "Invalid Input: ");
}

class ServerException extends AppException {
  ServerException([message])
      : super(message: message, prefix: "Server Error: ");
}

class BadResponseException extends AppException {
  BadResponseException([message])
      : super(message: message, prefix: "Invalid data: ");
}

class NotExsitsRouteException extends AppException {
  NotExsitsRouteException([message])
      : super(message: message, prefix: "Not Exsits Route: ");
}
