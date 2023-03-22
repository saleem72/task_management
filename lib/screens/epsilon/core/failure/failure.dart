//

import 'package:equatable/equatable.dart';

import '../../../api_helper_screen/domian/exceptions/app_exception.dart';

class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object?> get props => [message];

  factory Failure.fromException(Object error) {
    if (error is FetchDataException) {}

    if (error is BadRequestException) {}

    if (error is ConnectionException) {}

    if (error is UnauthorisedException) {}

    if (error is InvalidInputException) {}

    if (error is ServerException) {}

    if (error is BadResponseException) {}

    if (error is NotExsitsRouteException) {}

    return Failure(message: 'Failure: ${error.toString()}');
  }
}
